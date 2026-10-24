.class public Lcom/shabakaty/downloader/fk$d;
.super Ljava/lang/Object;
.source "BaseSlider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/fk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field public r:I

.field public final synthetic s:Lcom/shabakaty/downloader/fk;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/fk;Lcom/shabakaty/downloader/fk$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/fk$d;->s:Lcom/shabakaty/downloader/fk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Lcom/shabakaty/downloader/fk$d;->r:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/fk$d;->s:Lcom/shabakaty/downloader/fk;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/fk;->x:Lcom/shabakaty/downloader/fk$e;

    .line 3
    iget v1, p0, Lcom/shabakaty/downloader/fk$d;->r:I

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/shabakaty/downloader/m81;->y(II)Z

    return-void
.end method
