.class public Lcom/onesignal/u0$a$a;
.super Ljava/lang/Object;
.source "OneSignalRemoteParams.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/u0$a;->a(ILjava/lang/String;Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic r:Lcom/onesignal/u0$a;


# direct methods
.method public constructor <init>(Lcom/onesignal/u0$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/onesignal/u0$a$a;->r:Lcom/onesignal/u0$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    sget v0, Lcom/onesignal/u0;->a:I

    mul-int/lit16 v0, v0, 0x2710

    add-int/lit16 v0, v0, 0x7530

    const v1, 0x15f90

    if-le v0, v1, :cond_0

    const v0, 0x15f90

    :cond_0
    const/4 v1, 0x5

    const-string v2, "Failed to get Android parameters, trying again in "

    .line 2
    invoke-static {v2}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    div-int/lit16 v3, v0, 0x3e8

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " seconds."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 3
    invoke-static {v1, v2, v3}, Lcom/onesignal/q0;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 4
    invoke-static {v0}, Lcom/onesignal/o0;->y(I)V

    .line 5
    sget v0, Lcom/onesignal/u0;->a:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/onesignal/u0;->a:I

    .line 6
    iget-object v0, p0, Lcom/onesignal/u0$a$a;->r:Lcom/onesignal/u0$a;

    iget-object v1, v0, Lcom/onesignal/u0$a;->a:Ljava/lang/String;

    iget-object v2, v0, Lcom/onesignal/u0$a;->b:Ljava/lang/String;

    iget-object v0, v0, Lcom/onesignal/u0$a;->c:Lcom/onesignal/u0$b;

    invoke-static {v1, v2, v0}, Lcom/onesignal/u0;->a(Ljava/lang/String;Ljava/lang/String;Lcom/onesignal/u0$b;)V

    return-void
.end method
