.class public final Lcom/shabakaty/downloader/xs4$e;
.super Lcom/shabakaty/downloader/af2;
.source "TypeDeserializer.kt"

# interfaces
.implements Lcom/shabakaty/downloader/tm1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/xs4;->i(Lcom/shabakaty/downloader/xs4;Lcom/shabakaty/downloader/yi3;I)Lcom/shabakaty/downloader/q20;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/tm1<",
        "Lcom/shabakaty/downloader/yi3;",
        "Lcom/shabakaty/downloader/yi3;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/xs4;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/xs4;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/xs4$e;->r:Lcom/shabakaty/downloader/xs4;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/yi3;

    const-string v0, "it"

    .line 2
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/xs4$e;->r:Lcom/shabakaty/downloader/xs4;

    .line 4
    iget-object v0, v0, Lcom/shabakaty/downloader/xs4;->a:Lcom/shabakaty/downloader/rr0;

    .line 5
    iget-object v0, v0, Lcom/shabakaty/downloader/rr0;->d:Lcom/shabakaty/downloader/bu4;

    .line 6
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/bp;->r(Lcom/shabakaty/downloader/yi3;Lcom/shabakaty/downloader/bu4;)Lcom/shabakaty/downloader/yi3;

    move-result-object p1

    return-object p1
.end method
