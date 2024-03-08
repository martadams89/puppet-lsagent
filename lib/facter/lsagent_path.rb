Facter.add(:lsagent_path) do
  confine { Facter.value(:kernel) != 'windows' }
  confine { Facter.value(:operatingsystem) != 'nexus' }
  setcode do
    File.exists?('/opt/LansweeperAgent/LSAgent')
  end
end
