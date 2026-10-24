.class public Lcom/shabakaty/downloader/mt3;
.super Ljava/lang/Object;
.source "RetrofitZendeskCallbackAdapter.java"

# interfaces
.implements Lcom/shabakaty/downloader/xq;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/mt3$a;,
        Lcom/shabakaty/downloader/mt3$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        "F:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/shabakaty/downloader/xq<",
        "TE;>;"
    }
.end annotation


# static fields
.field public static final c:Lcom/shabakaty/downloader/mt3$b;


# instance fields
.field public final a:Lcom/shabakaty/downloader/n95;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/n95<",
            "TF;>;"
        }
    .end annotation
.end field

.field public final b:Lcom/shabakaty/downloader/mt3$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/mt3$b<",
            "TE;TF;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/mt3$a;

    invoke-direct {v0}, Lcom/shabakaty/downloader/mt3$a;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/mt3;->c:Lcom/shabakaty/downloader/mt3$b;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/n95;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/n95<",
            "TF;>;)V"
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/shabakaty/downloader/mt3;->c:Lcom/shabakaty/downloader/mt3$b;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/shabakaty/downloader/mt3;->a:Lcom/shabakaty/downloader/n95;

    .line 7
    iput-object v0, p0, Lcom/shabakaty/downloader/mt3;->b:Lcom/shabakaty/downloader/mt3$b;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/n95;Lcom/shabakaty/downloader/mt3$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/n95<",
            "TF;>;",
            "Lcom/shabakaty/downloader/mt3$b<",
            "TE;TF;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/mt3;->a:Lcom/shabakaty/downloader/n95;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/mt3;->b:Lcom/shabakaty/downloader/mt3$b;

    return-void
.end method


# virtual methods
.method public a(Lcom/shabakaty/downloader/nq;Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/nq<",
            "TE;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/mt3;->a:Lcom/shabakaty/downloader/n95;

    if-eqz p1, :cond_0

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/et3;

    invoke-direct {v0, p2}, Lcom/shabakaty/downloader/et3;-><init>(Ljava/lang/Throwable;)V

    .line 3
    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/n95;->onError(Lcom/shabakaty/downloader/z41;)V

    :cond_0
    return-void
.end method

.method public b(Lcom/shabakaty/downloader/nq;Lcom/shabakaty/downloader/xs3;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/nq<",
            "TE;>;",
            "Lcom/shabakaty/downloader/xs3<",
            "TE;>;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/mt3;->a:Lcom/shabakaty/downloader/n95;

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p2}, Lcom/shabakaty/downloader/xs3;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/shabakaty/downloader/mt3;->a:Lcom/shabakaty/downloader/n95;

    iget-object v0, p0, Lcom/shabakaty/downloader/mt3;->b:Lcom/shabakaty/downloader/mt3$b;

    .line 4
    iget-object p2, p2, Lcom/shabakaty/downloader/xs3;->b:Ljava/lang/Object;

    .line 5
    invoke-interface {v0, p2}, Lcom/shabakaty/downloader/mt3$b;->extract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/n95;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/shabakaty/downloader/mt3;->a:Lcom/shabakaty/downloader/n95;

    .line 7
    new-instance v0, Lcom/shabakaty/downloader/et3;

    invoke-direct {v0, p2}, Lcom/shabakaty/downloader/et3;-><init>(Lcom/shabakaty/downloader/xs3;)V

    .line 8
    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/n95;->onError(Lcom/shabakaty/downloader/z41;)V

    :cond_1
    :goto_0
    return-void
.end method
