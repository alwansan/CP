.class public final Lcom/shabakaty/downloader/we3$d;
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


# instance fields
.field public final synthetic r:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/we3$d;->r:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/j64$a$a;

    const-string v0, "$this$function"

    .line 2
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/we3$d;->r:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v2, v1, [Lcom/shabakaty/downloader/o82;

    .line 4
    sget-object v3, Lcom/shabakaty/downloader/we3;->b:Lcom/shabakaty/downloader/o82;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 5
    invoke-virtual {p1, v0, v2}, Lcom/shabakaty/downloader/j64$a$a;->a(Ljava/lang/String;[Lcom/shabakaty/downloader/o82;)V

    .line 6
    iget-object v0, p0, Lcom/shabakaty/downloader/we3$d;->r:Ljava/lang/String;

    new-array v1, v1, [Lcom/shabakaty/downloader/o82;

    aput-object v3, v1, v4

    invoke-virtual {p1, v0, v1}, Lcom/shabakaty/downloader/j64$a$a;->c(Ljava/lang/String;[Lcom/shabakaty/downloader/o82;)V

    .line 7
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method
