.class public final synthetic Lcom/shabakaty/downloader/ze1;
.super Ljava/lang/Object;
.source "Distinct.kt"


# static fields
.field public static final a:Lcom/shabakaty/downloader/tm1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/tm1<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Lcom/shabakaty/downloader/hn1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/hn1<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/ze1$b;->r:Lcom/shabakaty/downloader/ze1$b;

    sput-object v0, Lcom/shabakaty/downloader/ze1;->a:Lcom/shabakaty/downloader/tm1;

    .line 2
    sget-object v0, Lcom/shabakaty/downloader/ze1$a;->r:Lcom/shabakaty/downloader/ze1$a;

    sput-object v0, Lcom/shabakaty/downloader/ze1;->b:Lcom/shabakaty/downloader/hn1;

    return-void
.end method

.method public static final a(Lcom/shabakaty/downloader/te1;Lcom/shabakaty/downloader/tm1;Lcom/shabakaty/downloader/hn1;)Lcom/shabakaty/downloader/te1;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/shabakaty/downloader/te1<",
            "+TT;>;",
            "Lcom/shabakaty/downloader/tm1<",
            "-TT;+",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/shabakaty/downloader/hn1<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/shabakaty/downloader/te1<",
            "TT;>;"
        }
    .end annotation

    .line 1
    instance-of v0, p0, Lcom/shabakaty/downloader/ru0;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/shabakaty/downloader/ru0;

    iget-object v1, v0, Lcom/shabakaty/downloader/ru0;->s:Lcom/shabakaty/downloader/tm1;

    if-ne v1, p1, :cond_0

    iget-object v0, v0, Lcom/shabakaty/downloader/ru0;->t:Lcom/shabakaty/downloader/hn1;

    if-ne v0, p2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Lcom/shabakaty/downloader/ru0;

    invoke-direct {v0, p0, p1, p2}, Lcom/shabakaty/downloader/ru0;-><init>(Lcom/shabakaty/downloader/te1;Lcom/shabakaty/downloader/tm1;Lcom/shabakaty/downloader/hn1;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method
