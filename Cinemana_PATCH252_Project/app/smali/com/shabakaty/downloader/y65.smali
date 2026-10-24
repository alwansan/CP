.class public final Lcom/shabakaty/downloader/y65;
.super Ljava/lang/Object;
.source "WindowInsetsControllerCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/y65$d;,
        Lcom/shabakaty/downloader/y65$c;,
        Lcom/shabakaty/downloader/y65$b;,
        Lcom/shabakaty/downloader/y65$a;,
        Lcom/shabakaty/downloader/y65$e;
    }
.end annotation


# instance fields
.field public final a:Lcom/shabakaty/downloader/y65$e;


# direct methods
.method public constructor <init>(Landroid/view/Window;Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    .line 3
    new-instance p2, Lcom/shabakaty/downloader/y65$d;

    invoke-direct {p2, p1, p0}, Lcom/shabakaty/downloader/y65$d;-><init>(Landroid/view/Window;Lcom/shabakaty/downloader/y65;)V

    iput-object p2, p0, Lcom/shabakaty/downloader/y65;->a:Lcom/shabakaty/downloader/y65$e;

    goto :goto_0

    :cond_0
    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    .line 4
    new-instance v0, Lcom/shabakaty/downloader/y65$c;

    invoke-direct {v0, p1, p2}, Lcom/shabakaty/downloader/y65$c;-><init>(Landroid/view/Window;Landroid/view/View;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/y65;->a:Lcom/shabakaty/downloader/y65$e;

    goto :goto_0

    :cond_1
    const/16 v1, 0x17

    if-lt v0, v1, :cond_2

    .line 5
    new-instance v0, Lcom/shabakaty/downloader/y65$b;

    invoke-direct {v0, p1, p2}, Lcom/shabakaty/downloader/y65$b;-><init>(Landroid/view/Window;Landroid/view/View;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/y65;->a:Lcom/shabakaty/downloader/y65$e;

    goto :goto_0

    .line 6
    :cond_2
    new-instance v0, Lcom/shabakaty/downloader/y65$a;

    invoke-direct {v0, p1, p2}, Lcom/shabakaty/downloader/y65$a;-><init>(Landroid/view/Window;Landroid/view/View;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/y65;->a:Lcom/shabakaty/downloader/y65$e;

    :goto_0
    return-void
.end method
