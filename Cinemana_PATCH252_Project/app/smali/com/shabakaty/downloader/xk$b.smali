.class public final Lcom/shabakaty/downloader/xk$b;
.super Lcom/shabakaty/downloader/af2;
.source "BaseViewModel.kt"

# interfaces
.implements Lcom/shabakaty/downloader/tm1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/xk;->d(Lcom/shabakaty/downloader/xk;Lcom/shabakaty/downloader/f74;Lcom/shabakaty/downloader/tm1;Lcom/shabakaty/downloader/tm1;ILjava/lang/Object;)Lcom/shabakaty/downloader/mu0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/tm1<",
        "Ljava/lang/Throwable;",
        "Lcom/shabakaty/downloader/qv4;",
        ">;"
    }
.end annotation


# static fields
.field public static final r:Lcom/shabakaty/downloader/xk$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shabakaty/downloader/xk$b;

    invoke-direct {v0}, Lcom/shabakaty/downloader/xk$b;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/xk$b;->r:Lcom/shabakaty/downloader/xk$b;

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
    check-cast p1, Ljava/lang/Throwable;

    const-string v0, "it"

    .line 2
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method
