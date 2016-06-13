//
//  FISPerson.h
//  ObjectOrientedPeople
//
//  Created by Max Tkach on 6/13/16.
//  Copyright © 2016 al-tyus.com. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FISPerson : NSObject

@property (nonatomic, readonly) NSUInteger ageInYears;

@property (nonatomic, readonly) NSUInteger heightInInches;

@property (strong, nonatomic, readonly) NSString *name;

@property (strong, nonatomic, readonly) NSMutableArray *skills;

@property (nonatomic, readonly) BOOL qualifiedTutor;


- (instancetype) init;

- (instancetype) initWithName:(NSString *)name ageInYears:(NSUInteger)ageInYears heightInInches:(NSUInteger)heightInInches;

- (instancetype) initWithName:(NSString *)name ageInYears:(NSUInteger)ageInYears;


- (NSString *) celebrateBirthday;

- (void) learnSkillBash;

- (void) learnSkillXcode;

- (void) learnSkillObjectiveC;

- (void) learnSkillObjectOrientedProgramming;

- (void) learnSkillInterfaceBuilder;

- (BOOL) isQualifiedTutor;






@end
