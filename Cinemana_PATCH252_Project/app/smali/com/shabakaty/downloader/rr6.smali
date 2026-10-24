.class public final Lcom/shabakaty/downloader/rr6;
.super Lcom/shabakaty/downloader/he5;
.source "com.google.android.gms:play-services-cast@@19.0.0"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/shabakaty/downloader/zk4;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/zk4;I)V
    .locals 1

    iput p2, p0, Lcom/shabakaty/downloader/rr6;->a:I

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/rr6;->b:Lcom/shabakaty/downloader/zk4;

    invoke-direct {p0}, Lcom/shabakaty/downloader/he5;-><init>()V

    return-void

    .line 2
    :cond_0
    iput-object p1, p0, Lcom/shabakaty/downloader/rr6;->b:Lcom/shabakaty/downloader/zk4;

    invoke-direct {p0}, Lcom/shabakaty/downloader/he5;-><init>()V

    return-void
.end method
