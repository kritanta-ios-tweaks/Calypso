//
//  libcalypso.mm
//  Calypso
//
//  
//

__attribute__((constructor))
static void initialize() {
    NSLog(@"Calypso: Loaded");
}