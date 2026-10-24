.class public final Lcom/shabakaty/usermanagement/data/model/UserScheme$observeRxPictureSmall$1;
.super Ljava/lang/Object;
.source "UserScheme.kt"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/usermanagement/data/model/UserScheme;->observeRxPictureSmall()Lcom/shabakaty/downloader/qf1;
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
        "Lcom/shabakaty/downloader/wj3<",
        "+",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0010\u0005\u001a*\u0012\u000e\u0008\u0001\u0012\n \u0002*\u0004\u0018\u00010\u00010\u0001 \u0002*\u0014\u0012\u000e\u0008\u0001\u0012\n \u0002*\u0004\u0018\u00010\u00010\u0001\u0018\u00010\u00000\u0000H\n\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "Lcom/shabakaty/downloader/wj3;",
        "",
        "kotlin.jvm.PlatformType",
        "call",
        "()Lcom/shabakaty/downloader/wj3;",
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
.field public final synthetic this$0:Lcom/shabakaty/usermanagement/data/model/UserScheme;


# direct methods
.method public constructor <init>(Lcom/shabakaty/usermanagement/data/model/UserScheme;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/usermanagement/data/model/UserScheme$observeRxPictureSmall$1;->this$0:Lcom/shabakaty/usermanagement/data/model/UserScheme;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Lcom/shabakaty/downloader/wj3;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/shabakaty/downloader/wj3<",
            "+",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/shabakaty/usermanagement/data/model/UserScheme$observeRxPictureSmall$1;->this$0:Lcom/shabakaty/usermanagement/data/model/UserScheme;

    invoke-virtual {v0}, Lcom/shabakaty/usermanagement/data/model/UserScheme;->retrievePictureSmallSubject()Lcom/shabakaty/downloader/sl;

    move-result-object v0

    const/4 v1, 0x5

    .line 3
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/t43;->l(I)Lcom/shabakaty/downloader/qf1;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/shabakaty/downloader/qf1;->b()Lcom/shabakaty/downloader/qf1;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/usermanagement/data/model/UserScheme$observeRxPictureSmall$1;->call()Lcom/shabakaty/downloader/wj3;

    move-result-object v0

    return-object v0
.end method
