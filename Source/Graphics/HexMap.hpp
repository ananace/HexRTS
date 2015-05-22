#pragma once

namespace Graphics
{

class HexMap
{
public:
	HexMap();
	HexMap(const HexMap& copy) = default;
	~HexMap();

	HexMap& operator=(const HexMap& rhs) = default;
	
	void clear();
	void addHex();


private:
	

};

}
