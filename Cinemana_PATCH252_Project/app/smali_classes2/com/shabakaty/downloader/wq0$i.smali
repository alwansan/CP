.class public final Lcom/shabakaty/downloader/wq0$i;
.super Lcom/shabakaty/downloader/af2;
.source "DescriptorRenderer.kt"

# interfaces
.implements Lcom/shabakaty/downloader/tm1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/wq0;-><clinit>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/tm1<",
        "Lcom/shabakaty/downloader/cr0;",
        "Lcom/shabakaty/downloader/qv4;",
        ">;"
    }
.end annotation


# static fields
.field public static final r:Lcom/shabakaty/downloader/wq0$i;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shabakaty/downloader/wq0$i;

    invoke-direct {v0}, Lcom/shabakaty/downloader/wq0$i;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/wq0$i;->r:Lcom/shabakaty/downloader/wq0$i;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/cr0;

    const-string v0, "$this$withOptions"

    .line 2
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 3
    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/cr0;->e(Z)V

    .line 4
    sget-object v0, Lcom/shabakaty/downloader/c31;->r:Lcom/shabakaty/downloader/c31;

    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/cr0;->d(Ljava/util/Set;)V

    .line 5
    sget-object v0, Lcom/shabakaty/downloader/i30$b;->a:Lcom/shabakaty/downloader/i30$b;

    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/cr0;->k(Lcom/shabakaty/downloader/i30;)V

    const/4 v0, 0x1

    .line 6
    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/cr0;->o(Z)V

    .line 7
    sget-object v1, Lcom/shabakaty/downloader/ea3;->t:Lcom/shabakaty/downloader/ea3;

    invoke-interface {p1, v1}, Lcom/shabakaty/downloader/cr0;->b(Lcom/shabakaty/downloader/ea3;)V

    .line 8
    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/cr0;->j(Z)V

    .line 9
    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/cr0;->i(Z)V

    .line 10
    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/cr0;->g(Z)V

    .line 11
    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/cr0;->c(Z)V

    .line 12
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method
