.class public Lcom/shabakaty/downloader/j20$c;
.super Landroid/util/Property;
.source "CircularRevealWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/j20;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property<",
        "Lcom/shabakaty/downloader/j20;",
        "Lcom/shabakaty/downloader/j20$e;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/shabakaty/downloader/j20;",
            "Lcom/shabakaty/downloader/j20$e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/j20$c;

    const-string v1, "circularReveal"

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/j20$c;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/shabakaty/downloader/j20$c;->a:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-class v0, Lcom/shabakaty/downloader/j20$e;

    invoke-direct {p0, v0, p1}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/j20;

    .line 2
    invoke-interface {p1}, Lcom/shabakaty/downloader/j20;->getRevealInfo()Lcom/shabakaty/downloader/j20$e;

    move-result-object p1

    return-object p1
.end method

.method public set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/j20;

    check-cast p2, Lcom/shabakaty/downloader/j20$e;

    .line 2
    invoke-interface {p1, p2}, Lcom/shabakaty/downloader/j20;->setRevealInfo(Lcom/shabakaty/downloader/j20$e;)V

    return-void
.end method
