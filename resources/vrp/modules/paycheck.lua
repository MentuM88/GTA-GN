local Proxy = module("vrp", "lib/Proxy")

RegisterServerEvent('paycheck:salary')
AddEventHandler('paycheck:salary', function()
  	local user_id = vRP.getUserId(source)
	if vRP.hasPermission(user_id,"police.paycheck") then
		vRP.giveMoney(user_id,3000)
		vRPclient.notify(source,{"Paye: €3000"})
	end		
	if vRP.hasPermission(user_id,"emergency.paycheck") then
		vRP.giveMoney(user_id,4000)
		vRPclient.notify(source,{"Paye: €4000"})
	end
	if vRP.hasPermission(user_id,"repair.paycheck") then
		vRP.giveMoney(user_id,3000)
		vRPclient.notify(source,{"Paye: €3000"})
	end
	if vRP.hasPermission(user_id,"Chief.paycheck") then
		vRP.giveMoney(user_id,4000)
		vRPclient.notify(source,{"Paye: €3000"})
	end
	if vRP.hasPermission(user_id,"officier.paycheck") then
		vRP.giveMoney(user_id,6500)
		vRPclient.notify(source,{"Paye: €6500"})
	end
	if vRP.hasPermission(user_id,"Captain.paycheck") then
		vRP.giveMoney(user_id,5500)
		vRPclient.notify(source,{"Paye: €5500"})
	end
	if vRP.hasPermission(user_id,"Lieutenant.paycheck") then
		vRP.giveMoney(user_id,3500)
		vRPclient.notify(source,{"Paye: €3500"})
	end
	if vRP.hasPermission(user_id,"Detective.paycheck") then
		vRP.giveMoney(user_id,3250)
		vRPclient.notify(source,{"Paye: €3250"})
	end
	if vRP.hasPermission(user_id,"Sergeant.paycheck") then
		vRP.giveMoney(user_id,3000)
		vRPclient.notify(source,{"Paye: €3000"})
	end
	if vRP.hasPermission(user_id,"uber.paycheck") then
		vRP.giveMoney(user_id,2000)
		vRPclient.notify(source,{"Paye: €2000"})
	end
	if vRP.hasPermission(user_id,"Lawyer.paycheck") then
		vRP.giveMoney(user_id,4000)
		vRPclient.notify(source,{"Paye: €4000"})
	end
	if vRP.hasPermission(user_id,"delivery.paycheck") then
		vRP.giveMoney(user_id,2000)
		vRPclient.notify(source,{"Paye: €2000"})
	end
	if vRP.hasPermission(user_id,"citizen.paycheck") then
		vRP.giveMoney(user_id,1500)
		vRPclient.notify(source,{"Paye: €1500"})
	end
	if vRP.hasPermission(user_id,"SWAT.paycheck") then
		vRP.giveMoney(user_id,4500)
		vRPclient.notify(source,{"Paye: €4500"})
	end
	if vRP.hasPermission(user_id,"sheriff.paycheck") then
		vRP.giveMoney(user_id,4500)
		vRPclient.notify(source,{"Paye: €4500"})
	end
	if vRP.hasPermission(user_id,"Maire.paycheck") then
		vRP.giveMoney(user_id,5500)
		vRPclient.notify(source,{"Paye: €5500"})
	end
	if vRP.hasPermission(user_id,"trafficguard.paycheck") then
		vRP.giveMoney(user_id,2000)
		vRPclient.notify(source,{"Paye: €2000"})
	end
	if vRP.hasPermission(user_id,"santa.paycheck") then
		vRP.giveMoney(user_id,2000)
		vRPclient.notify(source,{"Paye: €2000"})
	end
	if vRP.hasPermission(user_id,"bankdriver.paycheck") then
		vRP.giveMoney(user_id,2000)
		vRPclient.notify(source,{"Paye: €2000"})
	end
	if vRP.hasPermission(user_id,"pilot.paycheck") then
		vRP.giveMoney(user_id,2000)
		vRPclient.notify(source,{"Paye: €2000"})
	end
	if vRP.hasPermission(user_id,"air.paycheck") then
		vRP.giveMoney(user_id,2000)
		vRPclient.notify(source,{"Paye: €2000"})
	end
	if vRP.hasPermission(user_id,"motards.paycheck") then
		vRP.giveMoney(user_id,2000)
		vRPclient.notify(source,{"Paye: €2000"})
	end
	if vRP.hasPermission(user_id,"gourou.paycheck") then
		vRP.giveMoney(user_id,3500)
		vRPclient.notify(source,{"Paye: €3500 - AMEN"})
	end
	if vRP.hasPermission(user_id,"unicorn.paycheck") then
		vRP.giveMoney(user_id,2000)
		vRPclient.notify(source,{"Paye: €2000"})
	end
end)

RegisterServerEvent('paycheck:bonus')
AddEventHandler('paycheck:bonus', function()
  	local user_id = vRP.getUserId(source)
	if vRP.hasPermission(user_id,"user.paycheck") then
		vRP.giveMoney(user_id,100)
		vRPclient.notify(source,{"Cadeau de fidélité: €100"})
	end
	if vRP.hasPermission(user_id,"user.paycheck") then
		vRP.getMoney(user_id,150)
		vRPclient.notify(source,{"Taxe: € -150"})
	end
end)