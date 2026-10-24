.class public final Lcom/shabakaty/downloader/x94$b;
.super Lcom/shabakaty/downloader/af2;
.source "specialBuiltinMembers.kt"

# interfaces
.implements Lcom/shabakaty/downloader/tm1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/x94;->b(Lcom/shabakaty/downloader/tq;)Lcom/shabakaty/downloader/tq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/tm1<",
        "Lcom/shabakaty/downloader/tq;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field public static final r:Lcom/shabakaty/downloader/x94$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shabakaty/downloader/x94$b;

    invoke-direct {v0}, Lcom/shabakaty/downloader/x94$b;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/x94$b;->r:Lcom/shabakaty/downloader/x94$b;

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
    .locals 3

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/tq;

    const-string v0, "it"

    .line 2
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    sget-object v0, Lcom/shabakaty/downloader/so;->m:Lcom/shabakaty/downloader/so;

    check-cast p1, Lcom/shabakaty/downloader/t64;

    const-string v0, "functionDescriptor"

    .line 4
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-static {p1}, Lcom/shabakaty/downloader/zd2;->B(Lcom/shabakaty/downloader/qm0;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/shabakaty/downloader/ro;

    invoke-direct {v0, p1}, Lcom/shabakaty/downloader/ro;-><init>(Lcom/shabakaty/downloader/t64;)V

    invoke-static {p1, v2, v0, v1}, Lcom/shabakaty/downloader/hr0;->b(Lcom/shabakaty/downloader/tq;ZLcom/shabakaty/downloader/tm1;I)Lcom/shabakaty/downloader/tq;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 6
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
