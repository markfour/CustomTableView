//
//  iOSMacro.h
//
//  Created by Markfour on 2015/06/22.
//  Copyright (c) 2015年 Markfour. All rights reserved.
//

///Log Macro
#ifdef DEBUG
#   define TRACE(fmt, ...) NSLog((@"%s(%d) " fmt), __PRETTY_FUNCTION__, __LINE__, ##__VA_ARGS__);
#else
#   define TRACE(...);
#endif
