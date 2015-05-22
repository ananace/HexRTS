#pragma once

#include <atomic>
#include <functional>
#include <string>
#include <unordered_map>

namespace Util
{

template<typename ResourceType>
class ResourceManager;

/** Smart pointer based resource store
	*
	* Just let it fall out of scope when you're done with the resource
	*/
template<typename ResourceType>
class Resource
{
public:
	Resource(const Resource&);
	Resource(Resource&&);
	~Resource();

	Resource& operator=(const Resource& rhs);

	ResourceType& operator*() const;
	ResourceType* operator->() const;

	std::string getName() const;

private:
	Resource(const std::string&, ResourceType* resource);

	std::string mResourceName;
	ResourceManager* mManager;
	ResourceType* mResource;

	friend class ResourceManager;
};

/** A Resource manager using smart pointer-ish structures
	*
	*/
template<typename ResourceType>
class ResourceManager
{
public:
	ResourceManager();
	~ResourceManager();

	template<typename... ConstructorArgs>
	void addResource(const std::string& identifier, ConstructorArgs... args);

	Resource<ResourceType> getResource(const std::string& identifier);

private:
	struct ResourceStore
	{
		typedef std::function<bool(ResourceType*)> ResourceLoader;

		ResourceType* Resource;
		ResourceLoader Loader;

		std::atomic<uint32_t> Refs;
	};
	
	volatile std::unordered_map<std::string, ResourceStore> mResources;

	friend class Resource;
};

}

#include "ResourceManager.inl"
