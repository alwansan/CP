.class public final Lcom/shabakaty/downloader/wq0$h;
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
.field public static final r:Lcom/shabakaty/downloader/wq0$h;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shabakaty/downloader/wq0$h;

    invoke-direct {v0}, Lcom/shabakaty/downloader/wq0$h;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/wq0$h;->r:Lcom/shabakaty/downloader/wq0$h;

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
    .locals 1

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/cr0;

    const-string v0, "$this$withOptions"

    .line 2
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    sget-object v0, Lcom/shabakaty/downloader/pr3;->s:Lcom/shabakaty/downloader/pr3;

    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/cr0;->m(Lcom/shabakaty/downloader/pr3;)V

    .line 4
    sget-object v0, Lcom/shabakaty/downloader/br0;->t:Ljava/util/Set;

    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/cr0;->d(Ljava/util/Set;)V

    .line 5
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method
