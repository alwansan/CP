.class Lcom/connectsdk/device/PairingDialog$2;
.super Ljava/lang/Object;
.source "PairingDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/connectsdk/device/PairingDialog;->getPairingDialog(Ljava/lang/String;)Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/connectsdk/device/PairingDialog;

.field public final synthetic val$input:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Lcom/connectsdk/device/PairingDialog;Landroid/widget/EditText;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/connectsdk/device/PairingDialog$2;->this$0:Lcom/connectsdk/device/PairingDialog;

    iput-object p2, p0, Lcom/connectsdk/device/PairingDialog$2;->val$input:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/connectsdk/device/PairingDialog$2;->val$input:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 2
    iget-object p2, p0, Lcom/connectsdk/device/PairingDialog$2;->this$0:Lcom/connectsdk/device/PairingDialog;

    iget-object p2, p2, Lcom/connectsdk/device/PairingDialog;->device:Lcom/connectsdk/device/ConnectableDevice;

    invoke-virtual {p2}, Lcom/connectsdk/device/ConnectableDevice;->getServices()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/connectsdk/service/DeviceService;

    .line 3
    invoke-virtual {v0, p1}, Lcom/connectsdk/service/DeviceService;->sendPairingKey(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method
