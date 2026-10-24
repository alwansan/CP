.class public abstract Lcom/shabakaty/downloader/ia3;
.super Ljava/lang/Object;
.source "SettingsEntity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/ia3$b;,
        Lcom/shabakaty/downloader/ia3$a;,
        Lcom/shabakaty/downloader/ia3$c;,
        Lcom/shabakaty/downloader/ia3$d;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I

.field public final c:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IILcom/shabakaty/downloader/nn0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/ia3;->a:Ljava/lang/String;

    .line 3
    iput p2, p0, Lcom/shabakaty/downloader/ia3;->b:I

    .line 4
    iput p3, p0, Lcom/shabakaty/downloader/ia3;->c:I

    return-void
.end method
