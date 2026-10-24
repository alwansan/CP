.class public final Lcom/shabakaty/usermanagement/data/model/UserScheme$saveRxEmail$1;
.super Ljava/lang/Object;
.source "UserScheme.kt"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/usermanagement/data/model/UserScheme;->saveRxEmail(Ljava/lang/String;)Lcom/shabakaty/downloader/q70;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/shabakaty/downloader/c80;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0010\u0004\u001a\n \u0001*\u0004\u0018\u00010\u00000\u0000H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "Lcom/shabakaty/downloader/c80;",
        "kotlin.jvm.PlatformType",
        "call",
        "()Lcom/shabakaty/downloader/c80;",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# instance fields
.field public final synthetic $email:Ljava/lang/String;

.field public final synthetic this$0:Lcom/shabakaty/usermanagement/data/model/UserScheme;


# direct methods
.method public constructor <init>(Lcom/shabakaty/usermanagement/data/model/UserScheme;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/usermanagement/data/model/UserScheme$saveRxEmail$1;->this$0:Lcom/shabakaty/usermanagement/data/model/UserScheme;

    iput-object p2, p0, Lcom/shabakaty/usermanagement/data/model/UserScheme$saveRxEmail$1;->$email:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Lcom/shabakaty/downloader/c80;
    .locals 2

    .line 2
    new-instance v0, Lcom/shabakaty/usermanagement/data/model/UserScheme$saveRxEmail$1$1;

    invoke-direct {v0, p0}, Lcom/shabakaty/usermanagement/data/model/UserScheme$saveRxEmail$1$1;-><init>(Lcom/shabakaty/usermanagement/data/model/UserScheme$saveRxEmail$1;)V

    .line 3
    new-instance v1, Lcom/shabakaty/downloader/s70;

    invoke-direct {v1, v0}, Lcom/shabakaty/downloader/s70;-><init>(Lcom/shabakaty/downloader/j2;)V

    return-object v1
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/usermanagement/data/model/UserScheme$saveRxEmail$1;->call()Lcom/shabakaty/downloader/c80;

    move-result-object v0

    return-object v0
.end method
