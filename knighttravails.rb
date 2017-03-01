def knight_moves(spt,ept)
	puts "You made it in #{breadth_first_search(spt,ept).length - 1} moves. Here's your paths: "
	breadth_first_search(spt,ept).each do |point|
		print point
		puts
	end
end

def depth_first_search(spt,ept)
	paths= []
	stacks = []
	stacks << spt
	while stacks.length >= 0
		node = stacks.pop
		paths << node
		return paths if node == ept
		stacks << [node[0] - 1, node[1] - 2] if (node[0] - 1) >= 0 && (node[1] - 2) >= 0
		stacks << [node[0] - 2, node[1] - 1] if (node[0] - 2) >= 0 && (node[1] - 1) >= 0
		stacks << [node[0] + 2, node[1] + 1] if (node[0] + 2) <= 8 && (node[1] + 1) <= 8
		stacks << [node[0] + 1, node[1] + 2] if (node[0] + 1) <= 8 && (node[1] + 2) <= 8
		if !((node[0] + 1) <= 8) && !((node[1] + 2) <= 8) && !((node[0] + 2) <= 8) && !((node[1] + 1) <= 8) && !((node[0] - 2) >= 0) && !((node[1] - 1) >= 0) && !((node[1] - 2) >= 0)
			paths.pop
		end
	end
	paths

end

def breadth_first_search(spt,ept)
	paths = []
	queue = []
	queue << spt
	while queue.length >= 0
		node = queue.shift
		paths << node
		return paths if node == ept
		queue << [node[0] - 1, node[1] - 2] if (node[0] - 1) >= 0 && (node[1] - 2) >= 0
		queue << [node[0] - 2, node[1] - 1] if (node[0] - 2) >= 0 && (node[1] - 1) >= 0
		queue << [node[0] + 2, node[1] + 1] if (node[0] + 2) <= 7 && (node[1] + 1) <= 7
		queue << [node[0] + 1, node[1] + 2] if (node[0] + 1) <= 7 && (node[1] + 2) <= 7
		if !((node[0] + 1) <= 7) && !((node[1] + 2) <= 7) && !((node[0] + 2) <= 7) && !((node[1] + 1) <= 7) && !((node[0] - 2) >= 0) && !((node[1] - 1) >= 0) && !((node[1] - 2) >= 0)
			paths.pop
		end
	end


end

knight_moves([1,2],[2,4])