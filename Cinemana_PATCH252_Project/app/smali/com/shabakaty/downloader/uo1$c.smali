.class public final Lcom/shabakaty/downloader/uo1$c;
.super Lcom/shabakaty/downloader/af2;
.source "GeneralNavigationExtensions.kt"

# interfaces
.implements Lcom/shabakaty/downloader/tm1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/uo1;->i(Lcom/shabakaty/downloader/dt0;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/tm1<",
        "Lcom/shabakaty/downloader/tw2;",
        "Lcom/shabakaty/downloader/qv4;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/shabakaty/downloader/uo1$c;->r:I

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/tw2;

    const-string v0, "$this$action"

    .line 2
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x13ed

    .line 3
    iput v0, p1, Lcom/shabakaty/downloader/tw2;->a:I

    .line 4
    new-instance v0, Lcom/shabakaty/downloader/kp1;

    iget v1, p0, Lcom/shabakaty/downloader/uo1$c;->r:I

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/kp1;-><init>(I)V

    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/tw2;->a(Lcom/shabakaty/downloader/tm1;)V

    .line 5
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method
