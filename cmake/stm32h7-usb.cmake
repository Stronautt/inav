set(STM32H7_USBCORE_DIR "${MAIN_LIB_DIR}/main/STM32H7/Middlewares/ST/STM32_USB_Device_Library/Core")
set(STM32H7_USBCORE_SRC
    usbd_core.c
    usbd_ctlreq.c
    usbd_ioreq.c
)
list(TRANSFORM STM32H7_USBCORE_SRC PREPEND "${STM32H7_USBCORE_DIR}/Src/")

set(STM32H7_USBCDC_DIR "${MAIN_LIB_DIR}/main/STM32H7/Middlewares/ST/STM32_USB_Device_Library/Class/CDC")
set(STM32H7_USBCDC_SRC
    usbd_cdc.c
)
list(TRANSFORM STM32H7_USBCDC_SRC PREPEND "${STM32H7_USBCDC_DIR}/Src/")

set(STM32H7_USBHID_DIR "${MAIN_LIB_DIR}/main/STM32H7/Middlewares/ST/STM32_USB_Device_Library/Class/HID")
set(STM32H7_USBHID_SRC
    usbd_hid.c
)
list(TRANSFORM STM32H7_USBHID_SRC PREPEND "${STM32H7_USBHID_DIR}/Src/")

set(STM32H7_USBMSC_DIR "${MAIN_LIB_DIR}/main/STM32H7/Middlewares/ST/STM32_USB_Device_Library/Class/MSC")
set(STM32H7_USBMSC_SRC
    usbd_msc.c
    usbd_msc_bot.c
    usbd_msc_data.c
    usbd_msc_scsi.c
)
list(TRANSFORM STM32H7_USBMSC_SRC PREPEND "${STM32H7_USBMSC_DIR}/Src/")

set(STM32H7_USB_INCLUDE_DIRS
    "${STM32H7_USBCORE_DIR}/Inc"
    "${STM32H7_USBCDC_DIR}/Inc"
    "${STM32H7_USBHID_DIR}/Inc"
    "${STM32H7_USBMSC_DIR}/Inc"
)

list(APPEND STM32H7_USB_SRC ${STM32H7_USBCORE_SRC})
list(APPEND STM32H7_USB_SRC ${STM32H7_USBCDC_SRC})
list(APPEND STM32H7_USB_SRC ${STM32H7_USBHID_SRC})
#XXX: Not working yet
#list(APPEND STM32H7_USB_SRC ${STM32H7_USBMSC_SRC})