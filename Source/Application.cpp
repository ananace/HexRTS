#include "Application.hpp"

Application::Application() :
	mExitCode(0)
{
	
}

Application::~Application()
{
}

void Application::run()
{

}

int Application::getExitCode() const
{
	return mExitCode;
}
