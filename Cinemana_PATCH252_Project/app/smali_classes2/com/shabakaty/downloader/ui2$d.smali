.class public Lcom/shabakaty/downloader/ui2$d;
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
    name = "d"
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
.field public final a:Lcom/shabakaty/downloader/qi2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/qi2<",
            "TE;>;"
        }
    .end annotation
.end field

.field public final b:Lcom/shabakaty/downloader/oc4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/oc4<",
            "TE;>;"
        }
    .end annotation
.end field

.field public final c:Lcom/shabakaty/downloader/db1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/db1<",
            "Lcom/shabakaty/downloader/ec4;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/qi2;Lcom/shabakaty/downloader/oc4;Lcom/shabakaty/downloader/db1;Lcom/shabakaty/downloader/ui2$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/ui2$d;->a:Lcom/shabakaty/downloader/qi2;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/ui2$d;->b:Lcom/shabakaty/downloader/oc4;

    .line 4
    iput-object p3, p0, Lcom/shabakaty/downloader/ui2$d;->c:Lcom/shabakaty/downloader/db1;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public b(Lcom/shabakaty/downloader/ec4;Lcom/shabakaty/downloader/ec4;Z)V
    .locals 0

    if-eqz p3, :cond_0

    if-nez p2, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 1
    iget-object p3, p0, Lcom/shabakaty/downloader/ui2$d;->c:Lcom/shabakaty/downloader/db1;

    .line 2
    invoke-interface {p3, p1, p2}, Lcom/shabakaty/downloader/db1;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 3
    :cond_1
    iget-object p1, p0, Lcom/shabakaty/downloader/ui2$d;->b:Lcom/shabakaty/downloader/oc4;

    invoke-interface {p1, p2}, Lcom/shabakaty/downloader/oc4;->selectData(Lcom/shabakaty/downloader/ec4;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 4
    iget-object p2, p0, Lcom/shabakaty/downloader/ui2$d;->a:Lcom/shabakaty/downloader/qi2;

    invoke-interface {p2, p1}, Lcom/shabakaty/downloader/qi2;->update(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method
