.class public abstract Lcom/shabakaty/downloader/mk4;
.super Ljava/lang/Object;
.source "TagPayloadReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/mk4$a;
    }
.end annotation


# instance fields
.field public final a:Lcom/shabakaty/downloader/fp4;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/fp4;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/mk4;->a:Lcom/shabakaty/downloader/fp4;

    return-void
.end method


# virtual methods
.method public final a(Lcom/shabakaty/downloader/ka3;J)Z
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/mk4;->b(Lcom/shabakaty/downloader/ka3;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lcom/shabakaty/downloader/mk4;->c(Lcom/shabakaty/downloader/ka3;J)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public abstract b(Lcom/shabakaty/downloader/ka3;)Z
.end method

.method public abstract c(Lcom/shabakaty/downloader/ka3;J)Z
.end method
