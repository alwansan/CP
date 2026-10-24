.class public final Lcom/shabakaty/downloader/xj6$b$a;
.super Lcom/shabakaty/downloader/kv5$a;

# interfaces
.implements Lcom/shabakaty/downloader/g36;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/xj6$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/kv5$a<",
        "Lcom/shabakaty/downloader/xj6$b;",
        "Lcom/shabakaty/downloader/xj6$b$a;",
        ">;",
        "Lcom/shabakaty/downloader/g36;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/shabakaty/downloader/xj6$b;->w()Lcom/shabakaty/downloader/xj6$b;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/shabakaty/downloader/kv5$a;-><init>(Lcom/shabakaty/downloader/kv5;)V

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/bk6;)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/shabakaty/downloader/xj6$b;->w()Lcom/shabakaty/downloader/xj6$b;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/kv5$a;-><init>(Lcom/shabakaty/downloader/kv5;)V

    return-void
.end method
