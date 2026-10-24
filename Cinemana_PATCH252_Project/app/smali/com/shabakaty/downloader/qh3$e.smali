.class public final Lcom/shabakaty/downloader/qh3$e;
.super Ljava/lang/Object;
.source "ProgressiveMediaPeriod.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/qh3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation


# instance fields
.field public final a:Lcom/shabakaty/downloader/cp4;

.field public final b:[Z

.field public final c:[Z

.field public final d:[Z


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/cp4;[Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/qh3$e;->a:Lcom/shabakaty/downloader/cp4;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/qh3$e;->b:[Z

    .line 4
    iget p1, p1, Lcom/shabakaty/downloader/cp4;->r:I

    new-array p2, p1, [Z

    iput-object p2, p0, Lcom/shabakaty/downloader/qh3$e;->c:[Z

    .line 5
    new-array p1, p1, [Z

    iput-object p1, p0, Lcom/shabakaty/downloader/qh3$e;->d:[Z

    return-void
.end method
