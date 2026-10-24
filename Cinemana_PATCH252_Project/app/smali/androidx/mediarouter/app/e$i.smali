.class public final Landroidx/mediarouter/app/e$i;
.super Ljava/lang/Object;
.source "MediaRouteDynamicControllerDialog.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/mediarouter/app/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "i"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroidx/mediarouter/media/g$h;",
        ">;"
    }
.end annotation


# static fields
.field public static final r:Landroidx/mediarouter/app/e$i;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/mediarouter/app/e$i;

    invoke-direct {v0}, Landroidx/mediarouter/app/e$i;-><init>()V

    sput-object v0, Landroidx/mediarouter/app/e$i;->r:Landroidx/mediarouter/app/e$i;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Landroidx/mediarouter/media/g$h;

    check-cast p2, Landroidx/mediarouter/media/g$h;

    .line 2
    iget-object p1, p1, Landroidx/mediarouter/media/g$h;->d:Ljava/lang/String;

    iget-object p2, p2, Landroidx/mediarouter/media/g$h;->d:Ljava/lang/String;

    .line 3
    invoke-virtual {p1, p2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p1

    return p1
.end method
