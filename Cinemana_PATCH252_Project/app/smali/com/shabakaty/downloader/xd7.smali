.class public final Lcom/shabakaty/downloader/xd7;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-cast@@19.0.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/s57;

.field public final synthetic s:I


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/s57;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/xd7;->r:Lcom/shabakaty/downloader/s57;

    iput p2, p0, Lcom/shabakaty/downloader/xd7;->s:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/xd7;->r:Lcom/shabakaty/downloader/s57;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/s57;->Z:Lcom/shabakaty/downloader/nw$d;

    .line 3
    iget v1, p0, Lcom/shabakaty/downloader/xd7;->s:I

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/nw$d;->onApplicationDisconnected(I)V

    return-void
.end method
