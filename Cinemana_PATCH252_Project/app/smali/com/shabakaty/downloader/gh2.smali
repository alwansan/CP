.class public Lcom/shabakaty/downloader/gh2;
.super Ljava/lang/Object;
.source "LibraryVersionComponent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/gh2$a;
    }
.end annotation


# direct methods
.method public static a(Ljava/lang/String;Ljava/lang/String;)Lcom/shabakaty/downloader/o80;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/shabakaty/downloader/o80<",
            "*>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/lh;

    invoke-direct {v0, p0, p1}, Lcom/shabakaty/downloader/lh;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    const-class p0, Lcom/shabakaty/downloader/dh2;

    .line 3
    invoke-static {p0}, Lcom/shabakaty/downloader/o80;->b(Ljava/lang/Class;)Lcom/shabakaty/downloader/o80$b;

    move-result-object p0

    new-instance p1, Lcom/shabakaty/downloader/n80;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lcom/shabakaty/downloader/n80;-><init>(Ljava/lang/Object;I)V

    .line 4
    iput-object p1, p0, Lcom/shabakaty/downloader/o80$b;->e:Lcom/shabakaty/downloader/t80;

    .line 5
    invoke-virtual {p0}, Lcom/shabakaty/downloader/o80$b;->b()Lcom/shabakaty/downloader/o80;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/lang/String;Lcom/shabakaty/downloader/gh2$a;)Lcom/shabakaty/downloader/o80;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/shabakaty/downloader/gh2$a<",
            "Landroid/content/Context;",
            ">;)",
            "Lcom/shabakaty/downloader/o80<",
            "*>;"
        }
    .end annotation

    .line 1
    const-class v0, Lcom/shabakaty/downloader/dh2;

    invoke-static {v0}, Lcom/shabakaty/downloader/o80;->b(Ljava/lang/Class;)Lcom/shabakaty/downloader/o80$b;

    move-result-object v0

    const-class v1, Landroid/content/Context;

    .line 2
    new-instance v2, Lcom/shabakaty/downloader/eq0;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v2, v1, v3, v4}, Lcom/shabakaty/downloader/eq0;-><init>(Ljava/lang/Class;II)V

    .line 3
    invoke-virtual {v0, v2}, Lcom/shabakaty/downloader/o80$b;->a(Lcom/shabakaty/downloader/eq0;)Lcom/shabakaty/downloader/o80$b;

    new-instance v1, Lcom/shabakaty/downloader/fh2;

    invoke-direct {v1, p0, p1}, Lcom/shabakaty/downloader/fh2;-><init>(Ljava/lang/String;Lcom/shabakaty/downloader/gh2$a;)V

    .line 4
    iput-object v1, v0, Lcom/shabakaty/downloader/o80$b;->e:Lcom/shabakaty/downloader/t80;

    .line 5
    invoke-virtual {v0}, Lcom/shabakaty/downloader/o80$b;->b()Lcom/shabakaty/downloader/o80;

    move-result-object p0

    return-object p0
.end method
