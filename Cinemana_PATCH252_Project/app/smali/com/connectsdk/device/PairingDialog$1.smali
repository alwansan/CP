.class Lcom/connectsdk/device/PairingDialog$1;
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


# direct methods
.method public constructor <init>(Lcom/connectsdk/device/PairingDialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/connectsdk/device/PairingDialog$1;->this$0:Lcom/connectsdk/device/PairingDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method
