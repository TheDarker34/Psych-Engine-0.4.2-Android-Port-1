local defaultNotePos = {};
local spin = true;
local arrowMoveX = 0;
local arrowMoveY = 0;

function onSongStart()
    for i = 0,7 do
        x = getPropertyFromGroup('strumLineNotes', i, 'x')

        y = getPropertyFromGroup('strumLineNotes', i, 'y')

        table.insert(defaultNotePos, {x,y})
      --  debugPrint("{" .. x .. "," .. y .. "}" .. " i:".. i)
    end
end

function onUpdate(elapsed)
    songPos = getPropertyFromClass('Conductor',  'songPosition');

    currentBeat = (songPos / 1000) * (bpm / 60)

    if  spin == true then
        for i = 0,7 do
            setPropertyFromGroup('strumLineNotes', i, 'x', defaultNotePos[i + 1][1] + arrowMoveX * math.sin((currentBeat + i*0.25) * math.pi))

            setPropertyFromGroup('strumLineNotes', i, 'y', defaultNotePos[i + 1][2] + arrowMoveY * math.cos((currentBeat + i*0.25) * math.pi))
        end
    end
end

function onEvent(name,value1,value2)
	if name == 'Move arrows' then 
		
		if value1 == '0' then
			arrowMoveX = 0;
		end
		if value1 == '1' then
            arrowMoveX = 1;
        end
            if value1 == '2' then
                arrowMoveX = 2;
            end
                if value1 == '3' then
                    arrowMoveX = 3;
		end
		if value1 == '4' then
			arrowMoveX = 4;
		end
		if value1 == '5' then
            arrowMoveX = 5;
        end
            if value1 == '6' then
                arrowMoveX = 6;
            end
                if value1 == '7' then
                    arrowMoveX = 7;
					end
		if value1 == '8' then
			arrowMoveX = 8;
		end
		if value1 == '9' then
            arrowMoveX = 9;
        end
            if value1 == '10' then
                arrowMoveX = 10;
            end
                if value1 == '11' then
                    arrowMoveX = 11;
					end
		if value1 == '12' then
			arrowMoveX = 12;
		end
		if value1 == '13' then
            arrowMoveX = 13;
        end
            if value1 == '14' then
                arrowMoveX = 14;
            end
                if value1 == '15' then
                    arrowMoveX = 15;
					end
		if value1 == '16' then
			arrowMoveX = 16;
		end
		if value1 == '17' then
            arrowMoveX = 17;
        end
            if value1 == '18' then
                arrowMoveX = 18;
            end
                if value1 == '19' then
                    arrowMoveX = 19;
					end
		if value1 == '20' then
			arrowMoveX = 20;
		end
		if value1 == '21' then
            arrowMoveX = 21;
        end
            if value1 == '22' then
                arrowMoveX = 22;
            end
                if value1 == '23' then
                    arrowMoveX = 23;
					end
		if value1 == '24' then
			arrowMoveX = 24;
		end
		if value1 == '25' then
            arrowMoveX = 25;
        end
            if value1 == '26' then
                arrowMoveX = 26;
            end
                if value1 == '27' then
                    arrowMoveX = 27;
					end
		if value1 == '28' then
			arrowMoveX = 28;
		end
		if value1 == '29' then
            arrowMoveX = 29;
        end
            if value1 == '30' then
                arrowMoveX = 30;
            end
                if value1 == '31' then
                    arrowMoveX = 31;
					end
		if value1 == '32' then
			arrowMoveX = 32;
		end
		if value1 == '33' then
            arrowMoveX = 33;
        end
            if value1 == '34' then
                arrowMoveX = 34;
            end
                if value1 == '35' then
                    arrowMoveX = 35;
					end
		if value1 == '36' then
			arrowMoveX = 36;
		end
		if value1 == '37' then
            arrowMoveX = 37;
        end
            if value1 == '38' then
                arrowMoveX = 38;
            end
                if value1 == '39' then
                    arrowMoveX = 39;
					end
		if value1 == '40' then
			arrowMoveX = 40;
		end
		if value1 == '41' then
            arrowMoveX = 41;
        end
            if value1 == '42' then
                arrowMoveX = 42;
            end
                if value1 == '43' then
                    arrowMoveX = 43;
					end
		if value1 == '44' then
			arrowMoveX = 44;
		end
		if value1 == '45' then
            arrowMoveX = 45;
        end
            if value1 == '46' then
                arrowMoveX = 46;
            end
                if value1 == '47' then
                    arrowMoveX = 47;
					end
		if value1 == '48' then
			arrowMoveX = 48;
		end
		if value1 == '49' then
            arrowMoveX = 49;
        end
            if value1 == '50' then
                arrowMoveX = 50;
            end
                if value1 == '51' then
                    arrowMoveX = 51;
					end
		if value1 == '52' then
			arrowMoveX = 52;
		end
		if value1 == '53' then
            arrowMoveX = 53;
        end
            if value1 == '54' then
                arrowMoveX = 54;
            end
                if value1 == '55' then
                    arrowMoveX = 55;
					end
		if value1 == '56' then
			arrowMoveX = 56;
		end
		if value1 == '57' then
            arrowMoveX = 57;
        end
            if value1 == '58' then
                arrowMoveX = 58;
            end
                if value1 == '59' then
                    arrowMoveX = 59;
					end
		if value1 == '60' then
			arrowMoveX = 60;
		end
		if value1 == '61' then
            arrowMoveX = 61;
        end
            if value1 == '62' then
                arrowMoveX = 62;
            end
                if value1 == '63' then
                    arrowMoveX = 63;
					end
		if value1 == '64' then
			arrowMoveX = 64;
		end
		if value1 == '65' then
            arrowMoveX = 65;
        end
            if value1 == '66' then
                arrowMoveX = 66;
            end
                if value1 == '67' then
                    arrowMoveX = 67;
					end
		if value1 == '68' then
			arrowMoveX = 68;
		end
		if value1 == '69' then
            arrowMoveX = 69;
        end
            if value1 == '70' then
                arrowMoveX = 70;
            end
                if value1 == '71' then
                    arrowMoveX = 71;
					end
		if value1 == '72' then
			arrowMoveX = 72;
		end
		if value1 == '73' then
            arrowMoveX = 73;
        end
            if value1 == '74' then
                arrowMoveX = 74;
            end
                if value1 == '75' then
                    arrowMoveX = 75;
					end
		if value1 == '76' then
			arrowMoveX = 76;
		end
		if value1 == '77' then
            arrowMoveX = 77;
        end
            if value1 == '78' then
                arrowMoveX = 78;
            end
                if value1 == '79' then
                    arrowMoveX = 79;
					end
		if value1 == '80' then
			arrowMoveX = 80;
		end
		if value1 == '81' then
            arrowMoveX = 81;
        end
            if value1 == '82' then
                arrowMoveX = 82;
            end
                if value1 == '83' then
                    arrowMoveX = 83;
					end
		if value1 == '84' then
			arrowMoveX = 84;
		end
		if value1 == '85' then
            arrowMoveX = 85;
        end
            if value1 == '86' then
                arrowMoveX = 86;
            end
                if value1 == '87' then
                    arrowMoveX = 87;
					end
		if value1 == '88' then
			arrowMoveX = 88;
		end
		if value1 == '89' then
            arrowMoveX = 89;
        end
            if value1 == '90' then
                arrowMoveX = 90;
            end
                if value1 == '91' then
                    arrowMoveX = 91;
					end
		if value1 == '92' then
			arrowMoveX = 92;
		end
		if value1 == '93' then
            arrowMoveX = 93;
        end
            if value1 == '94' then
                arrowMoveX = 94;
            end
                if value1 == '95' then
                    arrowMoveX = 95;
					end
		if value1 == '96' then
			arrowMoveX = 96;
		end
		if value1 == '97' then
            arrowMoveX = 97;
        end
            if value1 == '98' then
                arrowMoveX = 98;
            end
                if value1 == '99' then
                    arrowMoveX = 98;
					end
		if value1 == '100' then
			arrowMoveX = 100;
		end
		if value2 == '0' then
			arrowMoveY = 0;
		end
		if value2 == '1' then
            arrowMoveY = 1;
        end
            if value2 == '2' then
                arrowMoveY = 2;
            end
                if value2 == '3' then
                    arrowMoveY = 3;
		end
		if value2 == '4' then
			arrowMoveY = 4;
		end
		if value2 == '5' then
            arrowMoveY = 5;
        end
            if value2 == '6' then
                arrowMoveY = 6;
            end
                if value2 == '7' then
                    arrowMoveY = 7;
					end
		if value2 == '8' then
			arrowMoveY = 8;
		end
		if value2 == '9' then
            arrowMoveY = 9;
        end
            if value2 == '10' then
                arrowMoveY = 10;
            end
                if value2 == '11' then
                    arrowMoveY = 11;
					end
		if value2 == '12' then
			arrowMoveY = 12;
		end
		if value2 == '13' then
            arrowMoveY = 13;
        end
            if value2 == '14' then
                arrowMoveY = 14;
            end
                if value2 == '15' then
                    arrowMoveY = 15;
					end
		if value2 == '16' then
			arrowMoveY = 16;
		end
		if value2 == '17' then
            arrowMoveY = 17;
        end
            if value2 == '18' then
                arrowMoveY = 18;
            end
                if value2 == '19' then
                    arrowMoveY = 19;
					end
		if value2 == '20' then
			arrowMoveY = 20;
		end
		if value2 == '21' then
            arrowMoveY = 21;
        end
            if value2 == '22' then
                arrowMoveY = 22;
            end
                if value2 == '23' then
                    arrowMoveY = 23;
					end
		if value2 == '24' then
			arrowMoveY = 24;
		end
		if value2 == '25' then
            arrowMoveY = 25;
        end
            if value2 == '26' then
                arrowMoveY = 26;
            end
                if value2 == '27' then
                    arrowMoveY = 27;
					end
		if value2 == '28' then
			arrowMoveY = 28;
		end
		if value2 == '29' then
            arrowMoveY = 29;
        end
            if value2 == '30' then
                arrowMoveY = 30;
            end
                if value2 == '31' then
                    arrowMoveY = 31;
					end
		if value2 == '32' then
			arrowMoveY = 32;
		end
		if value2 == '33' then
            arrowMoveY = 33;
        end
            if value2 == '34' then
                arrowMoveY = 34;
            end
                if value2 == '35' then
                    arrowMoveY = 35;
					end
		if value2 == '36' then
			arrowMoveY = 36;
		end
		if value2 == '37' then
            arrowMoveY = 37;
        end
            if value2 == '38' then
                arrowMoveY = 38;
            end
                if value2 == '39' then
                    arrowMoveY = 39;
					end
		if value2 == '40' then
			arrowMoveY = 40;
		end
		if value2 == '41' then
            arrowMoveY = 41;
        end
            if value2 == '42' then
                arrowMoveY = 42;
            end
                if value2 == '43' then
                    arrowMoveY = 43;
					end
		if value2 == '44' then
			arrowMoveY = 44;
		end
		if value2 == '45' then
            arrowMoveY = 45;
        end
            if value2 == '46' then
                arrowMoveY = 46;
            end
                if value2 == '47' then
                    arrowMoveY = 47;
					end
		if value2 == '48' then
			arrowMoveY = 48;
		end
		if value2 == '49' then
            arrowMoveY = 49;
        end
            if value2 == '50' then
                arrowMoveY = 50;
            end
                if value2 == '51' then
                    arrowMoveY = 51;
					end
		if value2 == '52' then
			arrowMoveY = 52;
		end
		if value2 == '53' then
            arrowMoveY = 53;
        end
            if value2 == '54' then
                arrowMoveY = 54;
            end
                if value2 == '55' then
                    arrowMoveY = 55;
					end
		if value2 == '56' then
			arrowMoveY = 56;
		end
		if value2 == '57' then
            arrowMoveY = 57;
        end
            if value2 == '58' then
                arrowMoveY = 58;
            end
                if value2 == '59' then
                    arrowMoveY = 59;
					end
		if value2 == '60' then
			arrowMoveY = 60;
		end
		if value2 == '61' then
            arrowMoveY = 61;
        end
            if value2 == '62' then
                arrowMoveY= 62;
            end
                if value2 == '63' then
                    arrowMoveY = 63;
					end
		if value2 == '64' then
			arrowMoveY = 64;
		end
		if value2 == '65' then
            arrowMoveY = 65;
        end
            if value2 == '66' then
                arrowMoveY = 66;
            end
                if value2 == '67' then
                    arrowMoveY = 67;
					end
		if value2 == '68' then
			arrowMoveY = 68;
		end
		if value2 == '69' then
            arrowMoveY = 69;
        end
            if value2 == '70' then
                arrowMoveY = 70;
            end
                if value2 == '71' then
                    arrowMoveY = 71;
					end
		if value2 == '72' then
			arrowMoveY = 72;
		end
		if value2 == '73' then
            arrowMoveY = 73;
        end
            if value2 == '74' then
                arrowMoveY = 74;
            end
                if value2 == '75' then
                    arrowMoveY = 75;
					end
		if value2 == '76' then
			arrowMoveY = 76;
		end
		if value2 == '77' then
            arrowMoveY = 77;
        end
            if value2 == '78' then
                arrowMoveY = 78;
            end
                if value2 == '79' then
                    arrowMoveY = 79;
					end
		if value2 == '80' then
			arrowMoveY = 80;
		end
		if value2 == '81' then
            arrowMoveY = 81;
        end
            if value2 == '82' then
                arrowMoveY = 82;
            end
                if value2 == '83' then
                    arrowMoveY = 83;
					end
		if value2 == '84' then
			arrowMoveY = 84;
		end
		if value2 == '85' then
            arrowMoveY = 85;
        end
            if value2 == '86' then
                arrowMoveY = 86;
            end
                if value2 == '87' then
                    arrowMoveY = 87;
					end
		if value2 == '88' then
			arrowMoveY = 88;
		end
		if value2 == '89' then
            arrowMoveY = 89;
        end
            if value2 == '90' then
                arrowMoveY = 90;
            end
                if value2 == '91' then
                    arrowMoveY = 91;
					end
		if value2 == '92' then
			arrowMoveY = 92;
		end
		if value2 == '93' then
            arrowMoveY = 93;
        end
            if value2 == '94' then
                arrowMoveY = 94;
            end
                if value2 == '95' then
                    arrowMoveY = 95;
					end
		if value2 == '96' then
			arrowMoveY = 96;
		end
		if value2 == '97' then
            arrowMoveY = 97;
        end
            if value2 == '98' then
                arrowMoveY = 98;
            end
                if value2 == '99' then
                    arrowMoveY = 98;
					end
		if value2 == '100' then
			arrowMoveY = 100;
		end
	end
end
