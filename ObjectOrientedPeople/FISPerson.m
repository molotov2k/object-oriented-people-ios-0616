//
//  FISPerson.m
//  ObjectOrientedPeople
//
//  Created by Max Tkach on 6/13/16.
//  Copyright © 2016 al-tyus.com. All rights reserved.
//

#import "FISPerson.h"

@interface FISPerson()

@property (nonatomic, readwrite) NSUInteger ageInYears;

@property (nonatomic, readwrite) NSUInteger heightInInches;

@property (strong, nonatomic, readwrite) NSString *name;

@property (strong, nonatomic, readwrite) NSMutableArray *skills;

@property (nonatomic, readwrite) BOOL qualifiedTutor;

@end


@implementation FISPerson

- (instancetype) init {
    return [self initWithName:@"Adam" ageInYears:1 heightInInches:5];
}

- (instancetype) initWithName:(NSString *)name ageInYears:(NSUInteger)ageInYears heightInInches:(NSUInteger)heightInInches {
    self = [super init];
    if (self) {
        _name = name;
        _ageInYears = ageInYears;
        _heightInInches = heightInInches;
        _skills = [[NSMutableArray alloc] init];
        _qualifiedTutor = NO;
    }
    return self;
}

- (instancetype) initWithName:(NSString *)name ageInYears:(NSUInteger)ageInYears {
    return [self initWithName:name ageInYears:ageInYears heightInInches:5];
}


- (NSString *) celebrateBirthday {
    self.ageInYears += 1;
    NSString *ordinal = [self ordinalForInteger:self.ageInYears];
    return [NSString stringWithFormat:@"HAPPY %lu%@ BIRTHDAY, %@!!!", self.ageInYears, [ordinal uppercaseString], [self.name uppercaseString]];
}

- (NSString *)ordinalForInteger:(NSUInteger)integer {
    NSString *ordinal = @"th";
    if (integer % 10 == 1 && integer % 100 != 11) {
        ordinal = @"st";
    } else if (integer % 10 == 2 && integer % 100 != 12) {
        ordinal = @"nd";
    } else if (integer % 10 == 3 && integer % 100 != 13) {
        ordinal = @"rd";
    }
    return ordinal;
}

- (void) learnSkillBash {
    if (![self.skills containsObject:@"bash"]) {
        [self.skills addObject:@"bash"];
    }
}

- (void) learnSkillXcode {
    if (![self.skills containsObject:@"Xcode"]) {
        [self.skills addObject:@"Xcode"];
    }
}

- (void) learnSkillObjectiveC {
    if (![self.skills containsObject:@"Objective-C"]) {
        [self.skills addObject:@"Objective-C"];
    }
}

- (void) learnSkillObjectOrientedProgramming {
    if (![self.skills containsObject:@"Object-Oriented Programming"]) {
        [self.skills addObject:@"Object-Oriented Programming"];
    }
}

- (void) learnSkillInterfaceBuilder {
    if (![self.skills containsObject:@"Interface Builder"]) {
        [self.skills addObject:@"Interface Builder"];
    }
}

- (BOOL) isQualifiedTutor {
    self.qualifiedTutor = (self.skills.count > 3) ? YES : NO;
    return self.qualifiedTutor;
}




@end
