.class public final Lcom/shabakaty/downloader/kc3;
.super Lcom/shabakaty/downloader/gn;
.source "PlainTextItem.kt"


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, ""

    const-string v1, "text"

    .line 1
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lcom/shabakaty/downloader/gn;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/kc3;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/shabakaty/downloader/gn;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/kc3;->a:Ljava/lang/String;

    return-void
.end method
