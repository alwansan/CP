.class public final Lcom/shabakaty/downloader/sh3;
.super Ljava/lang/Object;
.source "Projection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/sh3$a;,
        Lcom/shabakaty/downloader/sh3$b;
    }
.end annotation


# instance fields
.field public final a:Lcom/shabakaty/downloader/sh3$a;

.field public final b:Lcom/shabakaty/downloader/sh3$a;

.field public final c:I

.field public final d:Z


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/sh3$a;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/sh3;->a:Lcom/shabakaty/downloader/sh3$a;

    .line 3
    iput-object p1, p0, Lcom/shabakaty/downloader/sh3;->b:Lcom/shabakaty/downloader/sh3$a;

    .line 4
    iput p2, p0, Lcom/shabakaty/downloader/sh3;->c:I

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcom/shabakaty/downloader/sh3;->d:Z

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/sh3$a;Lcom/shabakaty/downloader/sh3$a;I)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/shabakaty/downloader/sh3;->a:Lcom/shabakaty/downloader/sh3$a;

    .line 8
    iput-object p2, p0, Lcom/shabakaty/downloader/sh3;->b:Lcom/shabakaty/downloader/sh3$a;

    .line 9
    iput p3, p0, Lcom/shabakaty/downloader/sh3;->c:I

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 10
    :goto_0
    iput-boolean p1, p0, Lcom/shabakaty/downloader/sh3;->d:Z

    return-void
.end method
