#!/bin/sh
set -e

RESOURCES_TO_COPY=${PODS_ROOT}/resources-to-copy-${TARGETNAME}.txt
> "$RESOURCES_TO_COPY"

install_resource()
{
  case $1 in
    *.storyboard)
      echo "ibtool --reference-external-strings-file --errors --warnings --notices --output-format human-readable-text --compile ${CONFIGURATION_BUILD_DIR}/${UNLOCALIZED_RESOURCES_FOLDER_PATH}/`basename \"$1\" .storyboard`.storyboardc ${PODS_ROOT}/$1 --sdk ${SDKROOT}"
      ibtool --reference-external-strings-file --errors --warnings --notices --output-format human-readable-text --compile "${CONFIGURATION_BUILD_DIR}/${UNLOCALIZED_RESOURCES_FOLDER_PATH}/`basename \"$1\" .storyboard`.storyboardc" "${PODS_ROOT}/$1" --sdk "${SDKROOT}"
      ;;
    *.xib)
        echo "ibtool --reference-external-strings-file --errors --warnings --notices --output-format human-readable-text --compile ${CONFIGURATION_BUILD_DIR}/${UNLOCALIZED_RESOURCES_FOLDER_PATH}/`basename \"$1\" .xib`.nib ${PODS_ROOT}/$1 --sdk ${SDKROOT}"
      ibtool --reference-external-strings-file --errors --warnings --notices --output-format human-readable-text --compile "${CONFIGURATION_BUILD_DIR}/${UNLOCALIZED_RESOURCES_FOLDER_PATH}/`basename \"$1\" .xib`.nib" "${PODS_ROOT}/$1" --sdk "${SDKROOT}"
      ;;
    *.framework)
      echo "mkdir -p ${CONFIGURATION_BUILD_DIR}/${FRAMEWORKS_FOLDER_PATH}"
      mkdir -p "${CONFIGURATION_BUILD_DIR}/${FRAMEWORKS_FOLDER_PATH}"
      echo "rsync -av ${PODS_ROOT}/$1 ${CONFIGURATION_BUILD_DIR}/${FRAMEWORKS_FOLDER_PATH}"
      rsync -av "${PODS_ROOT}/$1" "${CONFIGURATION_BUILD_DIR}/${FRAMEWORKS_FOLDER_PATH}"
      ;;
    *.xcdatamodel)
      echo "xcrun momc \"${PODS_ROOT}/$1\" \"${CONFIGURATION_BUILD_DIR}/${UNLOCALIZED_RESOURCES_FOLDER_PATH}/`basename "$1"`.mom\""
      xcrun momc "${PODS_ROOT}/$1" "${CONFIGURATION_BUILD_DIR}/${UNLOCALIZED_RESOURCES_FOLDER_PATH}/`basename "$1" .xcdatamodel`.mom"
      ;;
    *.xcdatamodeld)
      echo "xcrun momc \"${PODS_ROOT}/$1\" \"${CONFIGURATION_BUILD_DIR}/${UNLOCALIZED_RESOURCES_FOLDER_PATH}/`basename "$1" .xcdatamodeld`.momd\""
      xcrun momc "${PODS_ROOT}/$1" "${CONFIGURATION_BUILD_DIR}/${UNLOCALIZED_RESOURCES_FOLDER_PATH}/`basename "$1" .xcdatamodeld`.momd"
      ;;
    /*)
      echo "$1"
      echo "$1" >> "$RESOURCES_TO_COPY"
      ;;
    *)
      echo "${PODS_ROOT}/$1"
      echo "${PODS_ROOT}/$1" >> "$RESOURCES_TO_COPY"
      ;;
  esac
}
install_resource "AMBubbleTableViewController/AMBubbleTableViewController/Resources/bubbleFlatIncoming.png"
install_resource "AMBubbleTableViewController/AMBubbleTableViewController/Resources/bubbleFlatIncoming@2x.png"
install_resource "AMBubbleTableViewController/AMBubbleTableViewController/Resources/bubbleFlatOutgoing.png"
install_resource "AMBubbleTableViewController/AMBubbleTableViewController/Resources/bubbleFlatOutgoing@2x.png"
install_resource "AMBubbleTableViewController/AMBubbleTableViewController/Resources/bubbleSquareIncoming.png"
install_resource "AMBubbleTableViewController/AMBubbleTableViewController/Resources/bubbleSquareIncoming@2x.png"
install_resource "AMBubbleTableViewController/AMBubbleTableViewController/Resources/bubbleSquareOutgoing.png"
install_resource "AMBubbleTableViewController/AMBubbleTableViewController/Resources/bubbleSquareOutgoing@2x.png"
install_resource "AMBubbleTableViewController/AMBubbleTableViewController/Resources/buttonSend.png"
install_resource "AMBubbleTableViewController/AMBubbleTableViewController/Resources/buttonSend@2x.png"
install_resource "AMBubbleTableViewController/AMBubbleTableViewController/Resources/buttonSendFlat.png"
install_resource "AMBubbleTableViewController/AMBubbleTableViewController/Resources/buttonSendFlat@2x.png"
install_resource "AMBubbleTableViewController/AMBubbleTableViewController/Resources/buttonSendHighlighted.png"
install_resource "AMBubbleTableViewController/AMBubbleTableViewController/Resources/buttonSendHighlighted@2x.png"
install_resource "AMBubbleTableViewController/AMBubbleTableViewController/Resources/buttonSendHighlightedFlat.png"
install_resource "AMBubbleTableViewController/AMBubbleTableViewController/Resources/buttonSendHighlightedFlat@2x.png"
install_resource "AMBubbleTableViewController/AMBubbleTableViewController/Resources/imageBar.png"
install_resource "AMBubbleTableViewController/AMBubbleTableViewController/Resources/imageBar@2x.png"
install_resource "AMBubbleTableViewController/AMBubbleTableViewController/Resources/imageBarFlat.png"
install_resource "AMBubbleTableViewController/AMBubbleTableViewController/Resources/imageBarFlat@2x.png"
install_resource "AMBubbleTableViewController/AMBubbleTableViewController/Resources/imageInput.png"
install_resource "AMBubbleTableViewController/AMBubbleTableViewController/Resources/imageInput@2x.png"
install_resource "AMBubbleTableViewController/AMBubbleTableViewController/Resources/imageInputFlat.png"
install_resource "AMBubbleTableViewController/AMBubbleTableViewController/Resources/imageInputFlat@2x.png"
install_resource "AMBubbleTableViewController/AMBubbleTableViewController/Resources/messageBubbleBlue.png"
install_resource "AMBubbleTableViewController/AMBubbleTableViewController/Resources/messageBubbleBlue@2x.png"
install_resource "AMBubbleTableViewController/AMBubbleTableViewController/Resources/messageBubbleGray.png"
install_resource "AMBubbleTableViewController/AMBubbleTableViewController/Resources/messageBubbleGray@2x.png"
install_resource "AMBubbleTableViewController/AMBubbleTableViewController/Resources/messageBubbleGreen.png"
install_resource "AMBubbleTableViewController/AMBubbleTableViewController/Resources/messageBubbleGreen@2x.png"
install_resource "AMBubbleTableViewController/AMBubbleTableViewController/Resources/messageBubbleHighlighted.png"
install_resource "AMBubbleTableViewController/AMBubbleTableViewController/Resources/messageBubbleHighlighted@2x.png"
install_resource "AMBubbleTableViewController/AMBubbleTableViewController/Resources/messageBubbleTyping.png"
install_resource "AMBubbleTableViewController/AMBubbleTableViewController/Resources/messageBubbleTyping@2x.png"
install_resource "Facebook-iOS-SDK/src/FBUserSettingsViewResources.bundle"
install_resource "TSMessages/TSMessages/Resources/Images/NotificationBackgroundError.png"
install_resource "TSMessages/TSMessages/Resources/Images/NotificationBackgroundError@2x.png"
install_resource "TSMessages/TSMessages/Resources/Images/NotificationBackgroundErrorIcon.png"
install_resource "TSMessages/TSMessages/Resources/Images/NotificationBackgroundErrorIcon@2x.png"
install_resource "TSMessages/TSMessages/Resources/Images/NotificationBackgroundMessage.png"
install_resource "TSMessages/TSMessages/Resources/Images/NotificationBackgroundMessage@2x.png"
install_resource "TSMessages/TSMessages/Resources/Images/NotificationBackgroundSuccess.png"
install_resource "TSMessages/TSMessages/Resources/Images/NotificationBackgroundSuccess@2x.png"
install_resource "TSMessages/TSMessages/Resources/Images/NotificationBackgroundSuccessIcon.png"
install_resource "TSMessages/TSMessages/Resources/Images/NotificationBackgroundSuccessIcon@2x.png"
install_resource "TSMessages/TSMessages/Resources/Images/NotificationBackgroundWarning.png"
install_resource "TSMessages/TSMessages/Resources/Images/NotificationBackgroundWarning@2x.png"
install_resource "TSMessages/TSMessages/Resources/Images/NotificationBackgroundWarningIcon.png"
install_resource "TSMessages/TSMessages/Resources/Images/NotificationBackgroundWarningIcon@2x.png"
install_resource "TSMessages/TSMessages/Resources/Images/NotificationButtonBackground.png"
install_resource "TSMessages/TSMessages/Resources/Images/NotificationButtonBackground@2x.png"
install_resource "TSMessages/TSMessages/Resources/TSMessagesDefaultDesign.json"

rsync -avr --no-relative --exclude '*/.svn/*' --files-from="$RESOURCES_TO_COPY" / "${CONFIGURATION_BUILD_DIR}/${UNLOCALIZED_RESOURCES_FOLDER_PATH}"
rm -f "$RESOURCES_TO_COPY"
