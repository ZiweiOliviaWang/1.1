%   Input - midiFile, an n-by-7 matrix representing the MIDI file being
%   analyzed, where n is the number of notes.
%
%   Output - representation, an n-by-p matrix containing the p features
%   derived from the n notes. Each feature must be a real number, although
%   categorical and Boolean features can be coded using different numbers
%   for each feature's level (e.g., false = 0, true = 1).
%
function representation = contourBuildRepresentation(midiFile)
%   Set the value n_feature to the number of features your representation
%   will include for each note.
    n_feature = 3;
   
%   Do not alter.
    n_note = size(midiFile, 1);
    representation = zeros(n_note, n_feature);
    
%   Set the values of representation(1, 1) through
%   representation(1, n_feature) to the values of each feature for the
%   first note in midiFile.
    representation(1, 1) = 
    
%   Set the values of all features for the 2nd through 2nd-to-last notes in
%   midiFile. These values will be coded as representation(i, j) for the
%   jth feature derived from ith note of midiFile. Set the values between
%   the command "for i = 2:n_note-1" and the command "end"
    for i = 2:n_note-1
        if midiFile(i, 4) > midiFile(i-1, 4)
            representation(i, 1) = 1;
        else 
        
    end

%   Set the values of representation(1, 1) through
%   representation(1, n_feature) to the values of each feature for the
%   last note in midiFile.
    representation(n_note, 1) = 
end