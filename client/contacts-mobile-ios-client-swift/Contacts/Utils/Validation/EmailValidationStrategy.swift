/*
 * JBoss, Home of Professional Open Source.
 * Copyright Red Hat, Inc., and individual contributors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

import Foundation

class EmailValidationStrategy: NSObject, ValidationStrategy {

    func validate(input: String) -> Bool {
        let detector = NSDataDetector(types: NSTextCheckingType.Link.toRaw(), error: nil)
        let matches = detector.matchesInString(input, options:.ReportCompletion, range:NSMakeRange(0, input.utf16Count));

        for match in matches as [NSTextCheckingResult] {
            if match.resultType.toRaw() ==  NSTextCheckingType.Link.toRaw() && match.URL.absoluteString!.rangeOfString("mailto:") != nil {
                return true;
            }
        }
    
        return false;
    }
}