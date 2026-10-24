.class public final Lcom/shabakaty/downloader/mr2$a;
.super Ljava/lang/Object;
.source "MemberScope.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/mr2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final synthetic a:Lcom/shabakaty/downloader/mr2$a;

.field public static final b:Lcom/shabakaty/downloader/tm1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/tm1<",
            "Lcom/shabakaty/downloader/hw2;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shabakaty/downloader/mr2$a;

    invoke-direct {v0}, Lcom/shabakaty/downloader/mr2$a;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/mr2$a;->a:Lcom/shabakaty/downloader/mr2$a;

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/mr2$a$a;->r:Lcom/shabakaty/downloader/mr2$a$a;

    sput-object v0, Lcom/shabakaty/downloader/mr2$a;->b:Lcom/shabakaty/downloader/tm1;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
