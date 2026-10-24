.class Lcom/connectsdk/device/SimpleDevicePicker$1;
.super Ljava/lang/Object;
.source "SimpleDevicePicker.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/connectsdk/device/SimpleDevicePicker;->showPicker()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/connectsdk/device/SimpleDevicePicker;


# direct methods
.method public constructor <init>(Lcom/connectsdk/device/SimpleDevicePicker;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/connectsdk/device/SimpleDevicePicker$1;->this$0:Lcom/connectsdk/device/SimpleDevicePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/connectsdk/device/ConnectableDevice;

    .line 2
    iget-object p2, p0, Lcom/connectsdk/device/SimpleDevicePicker$1;->this$0:Lcom/connectsdk/device/SimpleDevicePicker;

    invoke-virtual {p2, p1}, Lcom/connectsdk/device/SimpleDevicePicker;->selectDevice(Lcom/connectsdk/device/ConnectableDevice;)V

    return-void
.end method
