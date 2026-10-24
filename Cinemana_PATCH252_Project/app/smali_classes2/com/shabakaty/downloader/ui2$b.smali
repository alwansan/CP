.class public Lcom/shabakaty/downloader/ui2$b;
.super Ljava/lang/Object;
.source "Listeners.java"

# interfaces
.implements Lcom/shabakaty/downloader/ui2$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/ui2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/shabakaty/downloader/ui2$c;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TE;>;"
        }
    .end annotation
.end field

.field public final b:Lcom/shabakaty/downloader/qi2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/qi2<",
            "TE;>;"
        }
    .end annotation
.end field

.field public final c:Lcom/shabakaty/downloader/db1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/db1<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;Lcom/shabakaty/downloader/qi2;Lcom/shabakaty/downloader/db1;Lcom/shabakaty/downloader/ui2$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/ui2$b;->a:Ljava/lang/Class;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/ui2$b;->b:Lcom/shabakaty/downloader/qi2;

    .line 4
    iput-object p3, p0, Lcom/shabakaty/downloader/ui2$b;->c:Lcom/shabakaty/downloader/db1;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ui2$b;->a:Ljava/lang/Class;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/shabakaty/downloader/ec4;Lcom/shabakaty/downloader/ec4;Z)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1
    iget-object v1, p0, Lcom/shabakaty/downloader/ui2$b;->a:Ljava/lang/Class;

    invoke-virtual {p1, v1}, Lcom/shabakaty/downloader/ec4;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    if-eqz p2, :cond_1

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/ui2$b;->a:Ljava/lang/Class;

    invoke-virtual {p2, v0}, Lcom/shabakaty/downloader/ec4;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    :cond_1
    iget-object p2, p0, Lcom/shabakaty/downloader/ui2$b;->c:Lcom/shabakaty/downloader/db1;

    iget-object v1, p0, Lcom/shabakaty/downloader/ui2$b;->b:Lcom/shabakaty/downloader/qi2;

    if-eqz v0, :cond_2

    if-eqz p3, :cond_2

    .line 4
    invoke-interface {v1, v0}, Lcom/shabakaty/downloader/qi2;->update(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    .line 5
    invoke-interface {p2, p1, v0}, Lcom/shabakaty/downloader/db1;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 6
    invoke-interface {v1, v0}, Lcom/shabakaty/downloader/qi2;->update(Ljava/lang/Object;)V

    goto :goto_1

    .line 7
    :cond_3
    sget-object p1, Lcom/shabakaty/downloader/ui2;->a:Ljava/util/logging/Logger;

    sget-object p2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string p3, "Requested stateKey not found in store"

    invoke-virtual {p1, p2, p3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_4
    :goto_1
    return-void
.end method
