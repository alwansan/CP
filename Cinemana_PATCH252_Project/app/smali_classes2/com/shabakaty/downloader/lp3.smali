.class public final Lcom/shabakaty/downloader/lp3;
.super Lcom/shabakaty/downloader/so3;
.source "ReflectJavaAnnotationArguments.kt"

# interfaces
.implements Lcom/shabakaty/downloader/e72;


# instance fields
.field public final b:Ljava/lang/Enum;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Enum<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/hw2;Ljava/lang/Enum;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/hw2;",
            "Ljava/lang/Enum<",
            "*>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/shabakaty/downloader/so3;-><init>(Lcom/shabakaty/downloader/hw2;Lcom/shabakaty/downloader/nn0;)V

    .line 2
    iput-object p2, p0, Lcom/shabakaty/downloader/lp3;->b:Ljava/lang/Enum;

    return-void
.end method


# virtual methods
.method public b()Lcom/shabakaty/downloader/v20;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/lp3;->b:Ljava/lang/Enum;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Class;->isEnum()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v0

    :goto_0
    const-string v1, "enumClass"

    .line 3
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/shabakaty/downloader/qo3;->a(Ljava/lang/Class;)Lcom/shabakaty/downloader/v20;

    move-result-object v0

    return-object v0
.end method

.method public d()Lcom/shabakaty/downloader/hw2;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/lp3;->b:Ljava/lang/Enum;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/shabakaty/downloader/hw2;->u(Ljava/lang/String;)Lcom/shabakaty/downloader/hw2;

    move-result-object v0

    return-object v0
.end method
