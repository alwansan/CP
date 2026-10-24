.class public final Lcom/shabakaty/downloader/h35$b$a$a;
.super Ljava/lang/Object;
.source "Collect.kt"

# interfaces
.implements Lcom/shabakaty/downloader/ue1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/h35$b$a;->t(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/shabakaty/downloader/ue1<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/h35$b$a;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/h35$b$a;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/h35$b$a$a;->r:Lcom/shabakaty/downloader/h35$b$a;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Object;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/h35$b$a$a;->r:Lcom/shabakaty/downloader/h35$b$a;

    iget-object p1, p1, Lcom/shabakaty/downloader/h35$b$a;->w:Lcom/shabakaty/downloader/h35$b;

    .line 2
    iget-object p1, p1, Lcom/shabakaty/downloader/h35$b;->c:Lcom/shabakaty/downloader/r55;

    .line 3
    invoke-virtual {p1}, Lcom/shabakaty/downloader/r55;->a()Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/shabakaty/downloader/h35$b$a$a;->r:Lcom/shabakaty/downloader/h35$b$a;

    iget-object p2, p2, Lcom/shabakaty/downloader/h35$b$a;->w:Lcom/shabakaty/downloader/h35$b;

    .line 4
    iget-object p2, p2, Lcom/shabakaty/downloader/h35$b;->c:Lcom/shabakaty/downloader/r55;

    .line 5
    iget v0, p2, Lcom/shabakaty/downloader/r55;->b:I

    .line 6
    iget-object p2, p2, Lcom/shabakaty/downloader/r55;->c:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 7
    invoke-virtual {p1, v0, p2, v1}, Landroidx/databinding/ViewDataBinding;->m(ILjava/lang/Object;I)V

    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    sget-object p2, Lcom/shabakaty/downloader/te0;->r:Lcom/shabakaty/downloader/te0;

    if-ne p1, p2, :cond_1

    return-object p1

    .line 8
    :cond_1
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method
