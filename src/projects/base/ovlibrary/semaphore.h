//==============================================================================
//
//  OvenMediaEngine
//
//  Created by getroot
//  Copyright (c) 2018 AirenSoft. All rights reserved.
//
//==============================================================================
#pragma once

#include <base/common_types.h>

namespace ov
{
	class Semaphore
	{
	public:
		void Notify();

		void Wait();

		bool TryWait();

	private:
		std::mutex _mutex;
		std::condition_variable _condition;
		unsigned long _count = 0;
	};
}