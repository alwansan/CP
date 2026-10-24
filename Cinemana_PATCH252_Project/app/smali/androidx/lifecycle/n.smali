.class public Landroidx/lifecycle/n;
.super Ljava/lang/Object;
.source "ViewModelProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/lifecycle/n$a;,
        Landroidx/lifecycle/n$d;,
        Landroidx/lifecycle/n$c;,
        Landroidx/lifecycle/n$e;,
        Landroidx/lifecycle/n$b;
    }
.end annotation


# instance fields
.field public final a:Landroidx/lifecycle/n$b;

.field public final b:Lcom/shabakaty/downloader/r35;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/r35;Landroidx/lifecycle/n$b;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p2, p0, Landroidx/lifecycle/n;->a:Landroidx/lifecycle/n$b;

    .line 9
    iput-object p1, p0, Landroidx/lifecycle/n;->b:Lcom/shabakaty/downloader/r35;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/s35;)V
    .locals 2

    .line 1
    invoke-interface {p1}, Lcom/shabakaty/downloader/s35;->getViewModelStore()Lcom/shabakaty/downloader/r35;

    move-result-object v0

    instance-of v1, p1, Landroidx/lifecycle/d;

    if-eqz v1, :cond_0

    .line 2
    check-cast p1, Landroidx/lifecycle/d;

    invoke-interface {p1}, Landroidx/lifecycle/d;->getDefaultViewModelProviderFactory()Landroidx/lifecycle/n$b;

    move-result-object p1

    goto :goto_0

    .line 3
    :cond_0
    sget-object p1, Landroidx/lifecycle/n$d;->a:Landroidx/lifecycle/n$d;

    if-nez p1, :cond_1

    .line 4
    new-instance p1, Landroidx/lifecycle/n$d;

    invoke-direct {p1}, Landroidx/lifecycle/n$d;-><init>()V

    sput-object p1, Landroidx/lifecycle/n$d;->a:Landroidx/lifecycle/n$d;

    .line 5
    :cond_1
    sget-object p1, Landroidx/lifecycle/n$d;->a:Landroidx/lifecycle/n$d;

    .line 6
    :goto_0
    invoke-direct {p0, v0, p1}, Landroidx/lifecycle/n;-><init>(Lcom/shabakaty/downloader/r35;Landroidx/lifecycle/n$b;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Class;)Lcom/shabakaty/downloader/o35;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/shabakaty/downloader/o35;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v1, "androidx.lifecycle.ViewModelProvider.DefaultKey:"

    .line 2
    invoke-static {v1, v0}, Lcom/shabakaty/downloader/el3;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    iget-object v1, p0, Landroidx/lifecycle/n;->b:Lcom/shabakaty/downloader/r35;

    .line 4
    iget-object v1, v1, Lcom/shabakaty/downloader/r35;->a:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/o35;

    .line 5
    invoke-virtual {p1, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6
    iget-object p1, p0, Landroidx/lifecycle/n;->a:Landroidx/lifecycle/n$b;

    instance-of v0, p1, Landroidx/lifecycle/n$e;

    if-eqz v0, :cond_2

    .line 7
    check-cast p1, Landroidx/lifecycle/n$e;

    invoke-virtual {p1, v1}, Landroidx/lifecycle/n$e;->b(Lcom/shabakaty/downloader/o35;)V

    goto :goto_1

    .line 8
    :cond_0
    iget-object v1, p0, Landroidx/lifecycle/n;->a:Landroidx/lifecycle/n$b;

    instance-of v2, v1, Landroidx/lifecycle/n$c;

    if-eqz v2, :cond_1

    .line 9
    check-cast v1, Landroidx/lifecycle/n$c;

    invoke-virtual {v1, v0, p1}, Landroidx/lifecycle/n$c;->c(Ljava/lang/String;Ljava/lang/Class;)Lcom/shabakaty/downloader/o35;

    move-result-object p1

    goto :goto_0

    .line 10
    :cond_1
    invoke-interface {v1, p1}, Landroidx/lifecycle/n$b;->a(Ljava/lang/Class;)Lcom/shabakaty/downloader/o35;

    move-result-object p1

    :goto_0
    move-object v1, p1

    .line 11
    iget-object p1, p0, Landroidx/lifecycle/n;->b:Lcom/shabakaty/downloader/r35;

    .line 12
    iget-object p1, p1, Lcom/shabakaty/downloader/r35;->a:Ljava/util/HashMap;

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/o35;

    if-eqz p1, :cond_2

    .line 13
    invoke-virtual {p1}, Lcom/shabakaty/downloader/o35;->onCleared()V

    :cond_2
    :goto_1
    return-object v1

    .line 14
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Local and anonymous classes can not be ViewModels"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
