.class public Lcom/facebook/login/DeviceAuthDialog$3;
.super Ljava/lang/Object;
.source "DeviceAuthDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/login/DeviceAuthDialog;->j2()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic r:Lcom/facebook/login/DeviceAuthDialog;


# direct methods
.method public constructor <init>(Lcom/facebook/login/DeviceAuthDialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/facebook/login/DeviceAuthDialog$3;->r:Lcom/facebook/login/DeviceAuthDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog$3;->r:Lcom/facebook/login/DeviceAuthDialog;

    sget v1, Lcom/facebook/login/DeviceAuthDialog;->T:I

    .line 2
    invoke-virtual {v0}, Lcom/facebook/login/DeviceAuthDialog;->i2()V

    return-void
.end method
