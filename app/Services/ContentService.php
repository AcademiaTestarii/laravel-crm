<?php

namespace App\Services;

use App\Models\Content;
use App\Repositories\ContentRepository;
use App\Repositories\SubcontentRepository;

class ContentService
{
    protected $contentRepository;
    protected $subcontentRepository;

    /**
     * ContentService constructor.
     * @param ContentRepository $contentRepository
     * @param SubcontentRepository $subcontentRepository
     */
    public function __construct(
        ContentRepository $contentRepository,
        SubcontentRepository $subcontentRepository
    ) {
        $this->contentRepository = $contentRepository;
        $this->subcontentRepository = $subcontentRepository;
    }

    public function allOrderedBy(string $column = 'id', string $order = 'ASC')
    {
        return $this->contentRepository->allOrderedBy($column, $order);
    }

    public function updateContents(array $contentData)
    {
        $this->contentRepository
            ->findOneBy(['id' => Content::ID_HOMEPAGE])
            ->update([
                'title' => $contentData['title_' . Content::ID_HOMEPAGE],
                'text' => $contentData['text_' . Content::ID_HOMEPAGE]
            ]);

        $this->contentRepository
            ->findOneBy(['id' => Content::ID_TESTERS])
            ->update([
                'title' => $contentData['title_' . Content::ID_TESTERS],
                'text' => $contentData['text_' . Content::ID_TESTERS]
            ]);

        $this->contentRepository
            ->findOneBy(['id' => Content::ID_COMPANIES])
            ->update([
                'title' => $contentData['title_' . Content::ID_COMPANIES],
                'text' => $contentData['text_' . Content::ID_COMPANIES]
            ]);

        $subcontents = $this->subcontentRepository->allOrderedBy();

        foreach ($subcontents as $subcontent) {
            if (isset($contentData['title_sub_' . $subcontent->id])) {
                $subcontent->update([
                    'title' => $contentData['title_sub_' . $subcontent->id],
                    'text' => $contentData['text_sub_' . $subcontent->id],
                ]);
            }
        }
    }
}
