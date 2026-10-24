.class public final Lcom/shabakaty/downloader/xs4$a;
.super Lcom/shabakaty/downloader/af2;
.source "TypeDeserializer.kt"

# interfaces
.implements Lcom/shabakaty/downloader/tm1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/xs4;-><init>(Lcom/shabakaty/downloader/rr0;Lcom/shabakaty/downloader/xs4;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/tm1<",
        "Ljava/lang/Integer;",
        "Lcom/shabakaty/downloader/g30;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/xs4;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/xs4;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/xs4$a;->r:Lcom/shabakaty/downloader/xs4;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/xs4$a;->r:Lcom/shabakaty/downloader/xs4;

    .line 3
    iget-object v1, v0, Lcom/shabakaty/downloader/xs4;->a:Lcom/shabakaty/downloader/rr0;

    .line 4
    iget-object v1, v1, Lcom/shabakaty/downloader/rr0;->b:Lcom/shabakaty/downloader/jw2;

    .line 5
    invoke-static {v1, p1}, Lcom/shabakaty/downloader/rm3;->h(Lcom/shabakaty/downloader/jw2;I)Lcom/shabakaty/downloader/v20;

    move-result-object p1

    .line 6
    iget-boolean v1, p1, Lcom/shabakaty/downloader/v20;->c:Z

    if-eqz v1, :cond_0

    .line 7
    iget-object v0, v0, Lcom/shabakaty/downloader/xs4;->a:Lcom/shabakaty/downloader/rr0;

    .line 8
    iget-object v0, v0, Lcom/shabakaty/downloader/rr0;->a:Lcom/shabakaty/downloader/or0;

    .line 9
    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/or0;->b(Lcom/shabakaty/downloader/v20;)Lcom/shabakaty/downloader/q20;

    move-result-object p1

    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, v0, Lcom/shabakaty/downloader/xs4;->a:Lcom/shabakaty/downloader/rr0;

    .line 11
    iget-object v0, v0, Lcom/shabakaty/downloader/rr0;->a:Lcom/shabakaty/downloader/or0;

    .line 12
    iget-object v0, v0, Lcom/shabakaty/downloader/or0;->b:Lcom/shabakaty/downloader/nu2;

    .line 13
    invoke-static {v0, p1}, Lcom/shabakaty/downloader/rb1;->b(Lcom/shabakaty/downloader/nu2;Lcom/shabakaty/downloader/v20;)Lcom/shabakaty/downloader/g30;

    move-result-object p1

    :goto_0
    return-object p1
.end method
