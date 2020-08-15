---@class Button
Button = {}
---@return Button
function Button.new(name, parent, buttonType, imagePath) end
function Button:MoveTo(xPos, yPos) end
function Button:Move(xMove, yMove) end
function Button:PositionRelativeTo(component, xDiff, yDiff) end
function Button:Scale(factor) end
function Button:Resize(width, height) end
function Button:Position() end
function Button:Bounds() end
function Button:XPos() end
function Button:YPos() end
function Button:Width() end
function Button:Height() end
function Button:SetVisible(visible) end
function Button:Visible() end
function Button:GetContentComponent() end
function Button:GetPositioningComponent() end
function Button:Delete() end
function Button:ClearSound() end
function Button:SetState(state) end
function Button:CurrentState() end
function Button:IsSelected() end
function Button:RegisterForClick(callback, listenerName) end
function Button:SetImage(path) end
function Button:SetDisabled(disabled) end

---@class Image
Image = {}
---@return Image
function Image.new(name, parent, imagePath) end
function Image:MoveTo(xPos, yPos) end
function Image:Move(xMove, yMove) end
function Image:PositionRelativeTo(component, xDiff, yDiff) end
function Image:Scale(factor) end
function Image:Resize(width, height) end
function Image:Position() end
function Image:Bounds() end
function Image:XPos() end
function Image:YPos() end
function Image:Width() end
function Image:Height() end
function Image:SetVisible(visible) end
function Image:Visible() end
function Image:GetContentComponent() end
function Image:GetPositioningComponent() end
function Image:Delete() end
function Image:SetImage(path) end
function Image:SetOpacity(opacity) end
function Image:SetRotation(rotation) end

---@class Text
Text = {}
---@return Text
function Text.new(name, parent, textType, textToDisplay) end
function Text:MoveTo(xPos, yPos) end
function Text:Move(xMove, yMove) end
function Text:PositionRelativeTo(component, xDiff, yDiff) end
function Text:Position() end
function Text:Bounds() end
function Text:XPos() end
function Text:YPos() end
function Text:Width() end
function Text:Height() end
function Text:SetVisible(visible) end
function Text:Visible() end
function Text:GetContentComponent() end
function Text:GetPositioningComponent() end
function Text:Delete() end
function Text:SetText(text) end
function Text:GetText() end
function Text:Scale(factor) end
function Text:Resize(width, height) end

---@class Frame
Frame = {}
---@return Frame
function Frame.new(name) end
function Frame:MoveTo(xPos, yPos) end
function Frame:Move(xMove, yMove) end
function Frame:PositionRelativeTo(component, xDiff, yDiff) end
function Frame:Scale(factor) end
function Frame:Resize(width, height) end
function Frame:Position() end
function Frame:Bounds() end
function Frame:XPos() end
function Frame:YPos() end
function Frame:Width() end
function Frame:Height() end
function Frame:SetVisible(visible) end
function Frame:Visible() end
function Frame:GetContentComponent() end
function Frame:GetPositioningComponent() end
function Frame:Delete() end
function Frame:AddComponent(component) end
function Frame:AddCloseButton(opt_callback, opt_cross, opt_hideInstead) end
function Frame:SetTitle(title) end
function Frame:GetContentPanel() end

---@class Container
Container = {}
---@return Container
function Container.new(layout) end
function Container:AddComponent(component) end
function Container:AddGap(gapSize) end
function Container:Bounds() end
function Container:Position() end
function Container:Visible() end
function Container:SetVisible(visible) end
function Container:MoveTo(xPos, yPos) end
function Container:PositionRelativeTo(component, xDiff, yDiff) end
function Container.isContainer(component) end
function Container:Reposition() end
function Container:RecursiveRetrieveAllComponents() end
function Container:Clear() end

---@class ListView
ListView = {}
---@return ListView
function ListView.new(name, parent, scrollDirection) end
function ListView:MoveTo(xPos, yPos) end
function ListView:Move(xMove, yMove) end
function ListView:PositionRelativeTo(component, xDiff, yDiff) end
function ListView:Scale(factor) end
function ListView:Resize(width, height) end
function ListView:Position() end
function ListView:Bounds() end
function ListView:XPos() end
function ListView:YPos() end
function ListView:Width() end
function ListView:Height() end
function ListView:SetVisible(visible) end
function ListView:Visible() end
function ListView:GetContentComponent() end
function ListView:GetPositioningComponent() end
function ListView:Delete() end
function ListView:AddContainer(container) end
function ListView:AddComponent(component) end

---@class FlowLayout
FlowLayout = {}
function FlowLayout:CalculateBounds(components) end
function FlowLayout:PositionComponents(components, xPos, yPos) end

---@class TextButton
TextButton = {}
---@return TextButton
function TextButton.new(name, parent, buttonType, buttonText) end
function TextButton:MoveTo(xPos, yPos) end
function TextButton:Move(xMove, yMove) end
function TextButton:PositionRelativeTo(component, xDiff, yDiff) end
function TextButton:Scale(factor) end
function TextButton:Resize(width, height) end
function TextButton:Position() end
function TextButton:Bounds() end
function TextButton:XPos() end
function TextButton:YPos() end
function TextButton:Width() end
function TextButton:Height() end
function TextButton:SetVisible(visible) end
function TextButton:Visible() end
function TextButton:GetContentComponent() end
function TextButton:GetPositioningComponent() end
function TextButton:Delete() end
function TextButton:ClearSound() end
function TextButton:SetState(state) end
function TextButton:CurrentState() end
function TextButton:IsSelected() end
function TextButton:RegisterForClick(callback, listenerName) end
function TextButton:SetButtonText(text) end
function TextButton:SetDisabled(disabled) end

---@class TextBox
TextBox = {}
---@return Frame
function TextBox.new(name, parent) end
function TextBox:MoveTo(self, xPos, yPos)  end
function TextBox:Move(self, xMove, yMove) end
function TextBox:PositionRelativeTo(self, component, xDiff, yDiff) end
function TextBox:Scale(self, factor) end
function TextBox:Resize(self, width, height) end
function TextBox:Position(self) end
function TextBox:Bounds(self) end
function TextBox:XPos(self) end
function TextBox:YPos(self) end
function TextBox:Width(self) end
function TextBox:Height(self) end
function TextBox:SetVisible(self, visible) end
function TextBox:Visible(self) end
function TextBox:GetContentComponent(self) end
function TextBox:GetPositioningComponent(self) end
function TextBox:Delete(self)  end
function TextBox:GetText(self) end

---@class Util
Util = {}
function Util.init() end
function Util.delete(uic) end
function Util.registerComponent(name, component) end
function Util.unregisterComponent(name) end
function Util.createComponent(name, parentComponent, componentFilePath, ...) end
function Util.getComponentWithName(name) end
function Util.registerForClick(component, listenerName, callback) end
function Util.digForComponent(startingComponent, componentName) end
function Util.centreComponentOnComponent(componentToMove, componentToCentreOn) end
function Util.centreComponentOnScreen(componentToMove) end
function Util.recurseThroughChildrenApplyingFunction(parentUic, runnable) end
