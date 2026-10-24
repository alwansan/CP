.class public Lcom/onesignal/u;
.super Ljava/lang/Object;
.source "OSFocusTimeProcessorFactory.java"


# instance fields
.field public final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/onesignal/f$c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/onesignal/u;->a:Ljava/util/HashMap;

    .line 3
    const-class v1, Lcom/onesignal/f$d;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/onesignal/f$d;

    invoke-direct {v2}, Lcom/onesignal/f$d;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    const-class v1, Lcom/onesignal/f$b;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/onesignal/f$b;

    invoke-direct {v2}, Lcom/onesignal/f$b;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a()Lcom/onesignal/f$c;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/onesignal/u;->a:Ljava/util/HashMap;

    const-class v1, Lcom/onesignal/f$b;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onesignal/f$c;

    .line 2
    invoke-virtual {v0}, Lcom/onesignal/f$c;->c()Ljava/util/List;

    move-result-object v1

    .line 3
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/v23;

    .line 4
    iget-object v2, v2, Lcom/shabakaty/downloader/v23;->a:Lcom/shabakaty/downloader/z23;

    .line 5
    invoke-virtual {v2}, Lcom/shabakaty/downloader/z23;->f()Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v0

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/onesignal/u;->a:Ljava/util/HashMap;

    const-class v1, Lcom/onesignal/f$d;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onesignal/f$c;

    return-object v0
.end method

.method public b(Ljava/util/List;)Lcom/onesignal/f$c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/v23;",
            ">;)",
            "Lcom/onesignal/f$c;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/v23;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/v23;->a:Lcom/shabakaty/downloader/z23;

    .line 3
    invoke-virtual {v0}, Lcom/shabakaty/downloader/z23;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    .line 4
    iget-object p1, p0, Lcom/onesignal/u;->a:Ljava/util/HashMap;

    const-class v0, Lcom/onesignal/f$b;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onesignal/f$c;

    goto :goto_1

    .line 5
    :cond_2
    iget-object p1, p0, Lcom/onesignal/u;->a:Ljava/util/HashMap;

    const-class v0, Lcom/onesignal/f$d;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onesignal/f$c;

    :goto_1
    return-object p1
.end method
