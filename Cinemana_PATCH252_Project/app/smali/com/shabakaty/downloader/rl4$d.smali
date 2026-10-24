.class public Lcom/shabakaty/downloader/rl4$d;
.super Lcom/shabakaty/downloader/rl4$c;
.source "TextDirectionHeuristicsCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/rl4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public final b:Z


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/rl4$b;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/rl4$c;-><init>(Lcom/shabakaty/downloader/rl4$b;)V

    .line 2
    iput-boolean p2, p0, Lcom/shabakaty/downloader/rl4$d;->b:Z

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/rl4$d;->b:Z

    return v0
.end method
