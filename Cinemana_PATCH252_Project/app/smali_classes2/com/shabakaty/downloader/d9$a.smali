.class public final Lcom/shabakaty/downloader/d9$a;
.super Ljava/lang/Object;
.source "Annotations.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/d9;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final synthetic a:Lcom/shabakaty/downloader/d9$a;

.field public static final b:Lcom/shabakaty/downloader/d9;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shabakaty/downloader/d9$a;

    invoke-direct {v0}, Lcom/shabakaty/downloader/d9$a;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/d9$a;->a:Lcom/shabakaty/downloader/d9$a;

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/d9$a$a;

    invoke-direct {v0}, Lcom/shabakaty/downloader/d9$a$a;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/d9$a;->b:Lcom/shabakaty/downloader/d9;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
