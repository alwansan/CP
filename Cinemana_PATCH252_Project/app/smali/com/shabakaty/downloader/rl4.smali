.class public final Lcom/shabakaty/downloader/rl4;
.super Ljava/lang/Object;
.source "TextDirectionHeuristicsCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/rl4$a;,
        Lcom/shabakaty/downloader/rl4$b;,
        Lcom/shabakaty/downloader/rl4$d;,
        Lcom/shabakaty/downloader/rl4$c;
    }
.end annotation


# static fields
.field public static final a:Lcom/shabakaty/downloader/ql4;

.field public static final b:Lcom/shabakaty/downloader/ql4;

.field public static final c:Lcom/shabakaty/downloader/ql4;

.field public static final d:Lcom/shabakaty/downloader/ql4;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/rl4$d;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/shabakaty/downloader/rl4$d;-><init>(Lcom/shabakaty/downloader/rl4$b;Z)V

    sput-object v0, Lcom/shabakaty/downloader/rl4;->a:Lcom/shabakaty/downloader/ql4;

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/rl4$d;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/shabakaty/downloader/rl4$d;-><init>(Lcom/shabakaty/downloader/rl4$b;Z)V

    sput-object v0, Lcom/shabakaty/downloader/rl4;->b:Lcom/shabakaty/downloader/ql4;

    .line 3
    new-instance v0, Lcom/shabakaty/downloader/rl4$d;

    sget-object v1, Lcom/shabakaty/downloader/rl4$a;->a:Lcom/shabakaty/downloader/rl4$a;

    invoke-direct {v0, v1, v2}, Lcom/shabakaty/downloader/rl4$d;-><init>(Lcom/shabakaty/downloader/rl4$b;Z)V

    sput-object v0, Lcom/shabakaty/downloader/rl4;->c:Lcom/shabakaty/downloader/ql4;

    .line 4
    new-instance v0, Lcom/shabakaty/downloader/rl4$d;

    invoke-direct {v0, v1, v3}, Lcom/shabakaty/downloader/rl4$d;-><init>(Lcom/shabakaty/downloader/rl4$b;Z)V

    sput-object v0, Lcom/shabakaty/downloader/rl4;->d:Lcom/shabakaty/downloader/ql4;

    return-void
.end method
