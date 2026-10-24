.class public final Lcom/shabakaty/downloader/we3$g;
.super Lcom/shabakaty/downloader/af2;
.source "predefinedEnhancementInfo.kt"

# interfaces
.implements Lcom/shabakaty/downloader/tm1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/we3;-><clinit>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/tm1<",
        "Lcom/shabakaty/downloader/j64$a$a;",
        "Lcom/shabakaty/downloader/qv4;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/c64;)V
    .locals 0

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/j64$a$a;

    const-string v0, "$this$function"

    .line 2
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "Spliterator"

    const-string v1, "name"

    .line 3
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "java/util/"

    .line 4
    invoke-static {v1, v0}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/shabakaty/downloader/o82;

    const/4 v2, 0x0

    .line 5
    sget-object v3, Lcom/shabakaty/downloader/we3;->b:Lcom/shabakaty/downloader/o82;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object v3, v1, v2

    .line 6
    invoke-virtual {p1, v0, v1}, Lcom/shabakaty/downloader/j64$a$a;->c(Ljava/lang/String;[Lcom/shabakaty/downloader/o82;)V

    .line 7
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method
