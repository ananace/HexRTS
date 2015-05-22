#pragma once

#include <string>

namespace sf { class Texture; }

namespace Graphics
{

/** 
 *
 */
class HexSheet
{
public:
	HexSheet();
	HexSheet(const HexSheet& const) = default;
	~HexSheet();

	HexSheet& operator=(const HexSheet& rhs) = default;

	/**
	 *
	 * \note Each tile is [tex.getWidth() / xtiles, tex.getHeight() / ytiles / 2],
	 * centered vertically in their cell.
	 */
	bool loadFromTexture(const sf::Texture& tex, int xtiles, int ytiles);

	/**
	 *
	 * \note Is functionally identical to running
	 * ```
	 * sf::Texture temp;
	 * temp.loadFromFile(file);
	 * loadFromTexture(temp, xtiles, ytiles);
	 * ```
	 */
	bool loadFromFile(const std::string& file, int xtiles, int ytiles);

	// sf::IntRect getRect(uint32_t id) const;

private:
	const sf::Texture* mTexture;
};

}
