#pragma once

class Application
{
public:
	Application();
	~Application();

	void run();

	int getExitCode() const;

private:
	int mExitCode;
};
