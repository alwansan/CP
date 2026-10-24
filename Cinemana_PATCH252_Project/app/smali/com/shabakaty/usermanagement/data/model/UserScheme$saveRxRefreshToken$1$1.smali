.class public final Lcom/shabakaty/usermanagement/data/model/UserScheme$saveRxRefreshToken$1$1;
.super Ljava/lang/Object;
.source "UserScheme.kt"

# interfaces
.implements Lcom/shabakaty/downloader/j2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/usermanagement/data/model/UserScheme$saveRxRefreshToken$1;->call()Lcom/shabakaty/downloader/c80;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0003\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0001\u0010\u0002"
    }
    d2 = {
        "Lcom/shabakaty/downloader/qv4;",
        "run",
        "()V",
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
.field public final synthetic this$0:Lcom/shabakaty/usermanagement/data/model/UserScheme$saveRxRefreshToken$1;


# direct methods
.method public constructor <init>(Lcom/shabakaty/usermanagement/data/model/UserScheme$saveRxRefreshToken$1;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/usermanagement/data/model/UserScheme$saveRxRefreshToken$1$1;->this$0:Lcom/shabakaty/usermanagement/data/model/UserScheme$saveRxRefreshToken$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/usermanagement/data/model/UserScheme$saveRxRefreshToken$1$1;->this$0:Lcom/shabakaty/usermanagement/data/model/UserScheme$saveRxRefreshToken$1;

    iget-object v1, v0, Lcom/shabakaty/usermanagement/data/model/UserScheme$saveRxRefreshToken$1;->this$0:Lcom/shabakaty/usermanagement/data/model/UserScheme;

    iget-object v0, v0, Lcom/shabakaty/usermanagement/data/model/UserScheme$saveRxRefreshToken$1;->$refreshToken:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/shabakaty/usermanagement/data/model/UserScheme;->saveRefreshToken(Ljava/lang/String;)V

    return-void
.end method
